class ContractDetailsController < ApplicationController
  def index
    if params[:contract_id]
      @contract_details = ContractDetail.where(:contract_id => params[:contract_id]) 
      @contract = Contract.where(:id => params[:contract_id]).first
      @customer = Customer.where(:id => @contract.customer_id)
    else
      @contract_details = ContractDetail.all
    end  
  end


  def show
    @contract_detail = ContractDetail.find(params[:id])
  end

  def new
    # if params[:contract_id] then set the contract_id in the new contract detail to it
    @contract_detail = ContractDetail.new(:contract_id => params[:contract_id])
  end

  def create
    @contract_detail = ContractDetail.new(params[:contract_detail])
    if @contract_detail.save
      redirect_to @contract_detail, :notice => "Successfully created contract detail."
    else
      render :action => 'new'
    end
  end

  def edit
    @contract_detail = ContractDetail.find(params[:id])
  end

  def update
    @contract_detail = ContractDetail.find(params[:id])
    if @contract_detail.update_attributes(params[:contract_detail])
      redirect_to @contract_detail, :notice  => "Successfully updated contract detail."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contract_detail = ContractDetail.find(params[:id])
    @contract_detail.destroy
    redirect_to contract_details_url, :notice => "Successfully destroyed contract detail."
  end
end

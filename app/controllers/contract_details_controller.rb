class ContractDetailsController < ApplicationController
  def index
    @contract_details = ContractDetail.all
  end

  def show
    @contract_detail = ContractDetail.find(params[:id])
  end

  def new
    @contract_detail = ContractDetail.new
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

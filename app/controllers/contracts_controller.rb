class ContractsController < ApplicationController
  
  def index
    if params[:format].nil?
      @contracts = Contract.all
    else
      @contracts = Contract.where(:customer_id => params[:format]) 
    end  
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(params[:contract])
    if @contract.save
      redirect_to @contract, :notice => "Successfully created contract."
    else
      render :action => 'new'
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    if @contract.update_attributes(params[:contract])
      redirect_to @contract, :notice  => "Successfully updated contract."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to contracts_url, :notice => "Successfully destroyed contract."
  end
end

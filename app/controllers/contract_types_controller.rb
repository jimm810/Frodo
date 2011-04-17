class ContractTypesController < ApplicationController
  def index
    @contract_types = ContractType.all
  end

  def show
    @contract_type = ContractType.find(params[:id])
  end

  def new
    @contract_type = ContractType.new
  end

  def create
    @contract_type = ContractType.new(params[:contract_type])
    if @contract_type.save
      redirect_to @contract_type, :notice => "Successfully created contract type."
    else
      render :action => 'new'
    end
  end

  def edit
    @contract_type = ContractType.find(params[:id])
  end

  def update
    @contract_type = ContractType.find(params[:id])
    if @contract_type.update_attributes(params[:contract_type])
      redirect_to @contract_type, :notice  => "Successfully updated contract type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contract_type = ContractType.find(params[:id])
    @contract_type.destroy
    redirect_to contract_types_url, :notice => "Successfully destroyed contract type."
  end
end

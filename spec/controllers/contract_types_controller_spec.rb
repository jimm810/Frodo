require File.dirname(__FILE__) + '/../spec_helper'

describe ContractTypesController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => ContractType.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    ContractType.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    ContractType.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(contract_type_url(assigns[:contract_type]))
  end

  it "edit action should render edit template" do
    get :edit, :id => ContractType.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    ContractType.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ContractType.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    ContractType.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ContractType.first
    response.should redirect_to(contract_type_url(assigns[:contract_type]))
  end

  it "destroy action should destroy model and redirect to index action" do
    contract_type = ContractType.first
    delete :destroy, :id => contract_type
    response.should redirect_to(contract_types_url)
    ContractType.exists?(contract_type.id).should be_false
  end
end

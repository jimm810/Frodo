require File.dirname(__FILE__) + '/../spec_helper'

describe PhasesController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Phase.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Phase.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Phase.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(phase_url(assigns[:phase]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Phase.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Phase.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Phase.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Phase.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Phase.first
    response.should redirect_to(phase_url(assigns[:phase]))
  end

  it "destroy action should destroy model and redirect to index action" do
    phase = Phase.first
    delete :destroy, :id => phase
    response.should redirect_to(phases_url)
    Phase.exists?(phase.id).should be_false
  end
end

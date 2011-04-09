require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Contract.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Contract.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Contract.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contract_url(assigns(:contract))
  end

  def test_edit
    get :edit, :id => Contract.first
    assert_template 'edit'
  end

  def test_update_invalid
    Contract.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Contract.first
    assert_template 'edit'
  end

  def test_update_valid
    Contract.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Contract.first
    assert_redirected_to contract_url(assigns(:contract))
  end

  def test_destroy
    contract = Contract.first
    delete :destroy, :id => contract
    assert_redirected_to contracts_url
    assert !Contract.exists?(contract.id)
  end
end

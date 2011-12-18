require 'test_helper'

class ContractDetailsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ContractDetail.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ContractDetail.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ContractDetail.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to contract_detail_url(assigns(:contract_detail))
  end

  def test_edit
    get :edit, :id => ContractDetail.first
    assert_template 'edit'
  end

  def test_update_invalid
    ContractDetail.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ContractDetail.first
    assert_template 'edit'
  end

  def test_update_valid
    ContractDetail.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ContractDetail.first
    assert_redirected_to contract_detail_url(assigns(:contract_detail))
  end

  def test_destroy
    contract_detail = ContractDetail.first
    delete :destroy, :id => contract_detail
    assert_redirected_to contract_details_url
    assert !ContractDetail.exists?(contract_detail.id)
  end
end

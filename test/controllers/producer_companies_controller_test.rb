require 'test_helper'

class ProducerCompaniesControllerTest < ActionController::TestCase
  setup do
    @producer_company = producer_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_company" do
    assert_difference('ProducerCompany.count') do
      post :create, producer_company: { address: @producer_company.address, name: @producer_company.name, phone: @producer_company.phone }
    end

    assert_redirected_to producer_company_path(assigns(:producer_company))
  end

  test "should show producer_company" do
    get :show, id: @producer_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producer_company
    assert_response :success
  end

  test "should update producer_company" do
    patch :update, id: @producer_company, producer_company: { address: @producer_company.address, name: @producer_company.name, phone: @producer_company.phone }
    assert_redirected_to producer_company_path(assigns(:producer_company))
  end

  test "should destroy producer_company" do
    assert_difference('ProducerCompany.count', -1) do
      delete :destroy, id: @producer_company
    end

    assert_redirected_to producer_companies_path
  end
end

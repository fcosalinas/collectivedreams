require 'test_helper'

class ProducerTypesControllerTest < ActionController::TestCase
  setup do
    @producer_type = producer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_type" do
    assert_difference('ProducerType.count') do
      post :create, producer_type: { tipo: @producer_type.tipo }
    end

    assert_redirected_to producer_type_path(assigns(:producer_type))
  end

  test "should show producer_type" do
    get :show, id: @producer_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producer_type
    assert_response :success
  end

  test "should update producer_type" do
    patch :update, id: @producer_type, producer_type: { tipo: @producer_type.tipo }
    assert_redirected_to producer_type_path(assigns(:producer_type))
  end

  test "should destroy producer_type" do
    assert_difference('ProducerType.count', -1) do
      delete :destroy, id: @producer_type
    end

    assert_redirected_to producer_types_path
  end
end

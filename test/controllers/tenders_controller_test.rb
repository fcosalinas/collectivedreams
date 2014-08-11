require 'test_helper'

class TendersControllerTest < ActionController::TestCase
  setup do
    @tender = tenders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tender" do
    assert_difference('Tender.count') do
      post :create, tender: { event_date: @tender.event_date, idea_id: @tender.idea_id, max_capacity: @tender.max_capacity, min_capacity: @tender.min_capacity, place: @tender.place, price: @tender.price, producer_company_id: @tender.producer_company_id }
    end

    assert_redirected_to tender_path(assigns(:tender))
  end

  test "should show tender" do
    get :show, id: @tender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tender
    assert_response :success
  end

  test "should update tender" do
    patch :update, id: @tender, tender: { event_date: @tender.event_date, idea_id: @tender.idea_id, max_capacity: @tender.max_capacity, min_capacity: @tender.min_capacity, place: @tender.place, price: @tender.price, producer_company_id: @tender.producer_company_id }
    assert_redirected_to tender_path(assigns(:tender))
  end

  test "should destroy tender" do
    assert_difference('Tender.count', -1) do
      delete :destroy, id: @tender
    end

    assert_redirected_to tenders_path
  end
end

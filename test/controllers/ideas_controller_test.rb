require 'test_helper'

class IdeasControllerTest < ActionController::TestCase
  setup do
    @idea = ideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea" do
    assert_difference('Idea.count') do
      post :create, idea: { creation_date: @idea.creation_date, description: @idea.description, double: @idea.double, max_assistance: @idea.max_assistance, max_cost: @idea.max_cost, min_assistance: @idea.min_assistance, min_cost: @idea.min_cost, possible_dates: @idea.possible_dates, possible_places: @idea.possible_places, title: @idea.title }
    end

    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should show idea" do
    get :show, id: @idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea
    assert_response :success
  end

  test "should update idea" do
    patch :update, id: @idea, idea: { creation_date: @idea.creation_date, description: @idea.description, double: @idea.double, max_assistance: @idea.max_assistance, max_cost: @idea.max_cost, min_assistance: @idea.min_assistance, min_cost: @idea.min_cost, possible_dates: @idea.possible_dates, possible_places: @idea.possible_places, title: @idea.title }
    assert_redirected_to idea_path(assigns(:idea))
  end

  test "should destroy idea" do
    assert_difference('Idea.count', -1) do
      delete :destroy, id: @idea
    end

    assert_redirected_to ideas_path
  end
end

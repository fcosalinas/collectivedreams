require 'test_helper'

class QuizzesControllerTest < ActionController::TestCase
  setup do
    @quiz = quizzes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quizzes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quiz" do
    assert_difference('Quiz.count') do
      post :create, quiz: { idea: @quiz.idea, max_assistance: @quiz.max_assistance, max_cost: @quiz.max_cost, min_assistance: @quiz.min_assistance, min_cost: @quiz.min_cost, possible_date: @quiz.possible_date, possible_places: @quiz.possible_places }
    end

    assert_redirected_to quiz_path(assigns(:quiz))
  end

  test "should show quiz" do
    get :show, id: @quiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quiz
    assert_response :success
  end

  test "should update quiz" do
    patch :update, id: @quiz, quiz: { idea: @quiz.idea, max_assistance: @quiz.max_assistance, max_cost: @quiz.max_cost, min_assistance: @quiz.min_assistance, min_cost: @quiz.min_cost, possible_date: @quiz.possible_date, possible_places: @quiz.possible_places }
    assert_redirected_to quiz_path(assigns(:quiz))
  end

  test "should destroy quiz" do
    assert_difference('Quiz.count', -1) do
      delete :destroy, id: @quiz
    end

    assert_redirected_to quizzes_path
  end
end

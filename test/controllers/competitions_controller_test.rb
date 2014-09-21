require 'test_helper'

class CompetitionsControllerTest < ActionController::TestCase
  setup do
    @competition = competitions(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competition" do
    assert_difference('Competition.count') do
      post :create, competition: { description: @competition.description, end_date: @competition.end_date, name: @competition.name, start_date: @competition.start_date, status: @competition.status }
    end

    assert_redirected_to competition_path(assigns(:competition))
  end

  test "should show competition" do
    get :show, id: @competition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competition
    assert_response :success
  end

  test "should update competition" do
    patch :update, id: @competition, competition: { description: @competition.description, end_date: @competition.end_date, name: @competition.name, start_date: @competition.start_date, status: @competition.status }
    assert_redirected_to competition_path(assigns(:competition))
  end

  test "should destroy competition" do
    assert_difference('Competition.count', -1) do
      delete :destroy, id: @competition
    end

    assert_redirected_to competitions_path
  end
end

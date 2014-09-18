require 'test_helper'

class CompetitionFormatsControllerTest < ActionController::TestCase
  setup do
    @competition_format = competition_formats(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:competition_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create competition_format" do
    assert_difference('CompetitionFormat.count') do
      post :create, competition_format: { name: @competition_format.name }
    end

    assert_redirected_to competition_format_path(assigns(:competition_format))
  end

  test "should show competition_format" do
    get :show, id: @competition_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @competition_format
    assert_response :success
  end

  test "should update competition_format" do
    patch :update, id: @competition_format, competition_format: { name: @competition_format.name }
    assert_redirected_to competition_format_path(assigns(:competition_format))
  end

  test "should destroy competition_format" do
    assert_difference('CompetitionFormat.count', -1) do
      delete :destroy, id: @competition_format
    end

    assert_redirected_to competition_formats_path
  end
end

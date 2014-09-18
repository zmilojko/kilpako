require 'test_helper'

class RaceFormatsControllerTest < ActionController::TestCase
  setup do
    @race_format = race_formats(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:race_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race_format" do
    assert_difference('RaceFormat.count') do
      post :create, race_format: { name: @race_format.name }
    end

    assert_redirected_to race_format_path(assigns(:race_format))
  end

  test "should show race_format" do
    get :show, id: @race_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race_format
    assert_response :success
  end

  test "should update race_format" do
    patch :update, id: @race_format, race_format: { name: @race_format.name }
    assert_redirected_to race_format_path(assigns(:race_format))
  end

  test "should destroy race_format" do
    assert_difference('RaceFormat.count', -1) do
      delete :destroy, id: @race_format
    end

    assert_redirected_to race_formats_path
  end
end

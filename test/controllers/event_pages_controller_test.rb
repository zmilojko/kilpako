require 'test_helper'

class EventPagesControllerTest < ActionController::TestCase
  setup do
    @event_page = event_pages(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_page" do
    assert_difference('EventPage.count') do
      post :create, event_page: { content: @event_page.content, event_id: @event_page.event_id, name: @event_page.name }
    end

    assert_redirected_to event_page_path(assigns(:event_page))
  end

  test "should show event_page" do
    get :show, id: @event_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_page
    assert_response :success
  end

  test "should update event_page" do
    patch :update, id: @event_page, event_page: { content: @event_page.content, event_id: @event_page.event_id, name: @event_page.name }
    assert_redirected_to event_page_path(assigns(:event_page))
  end

  test "should destroy event_page" do
    assert_difference('EventPage.count', -1) do
      delete :destroy, id: @event_page
    end

    assert_redirected_to event_pages_path
  end
end

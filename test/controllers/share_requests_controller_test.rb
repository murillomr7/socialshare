require 'test_helper'

class ShareRequestsControllerTest < ActionController::TestCase
  setup do
    @share_request = share_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:share_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share_request" do
    assert_difference('ShareRequest.count') do
      post :create, share_request: { description: @share_request.description, eventDate: @share_request.eventDate, member_id: @share_request.member_id, title: @share_request.title }
    end

    assert_redirected_to share_request_path(assigns(:share_request))
  end

  test "should show share_request" do
    get :show, id: @share_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share_request
    assert_response :success
  end

  test "should update share_request" do
    patch :update, id: @share_request, share_request: { description: @share_request.description, eventDate: @share_request.eventDate, member_id: @share_request.member_id, title: @share_request.title }
    assert_redirected_to share_request_path(assigns(:share_request))
  end

  test "should destroy share_request" do
    assert_difference('ShareRequest.count', -1) do
      delete :destroy, id: @share_request
    end

    assert_redirected_to share_requests_path
  end
end

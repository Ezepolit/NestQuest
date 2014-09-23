require 'test_helper'

class ShowingUsersControllerTest < ActionController::TestCase
  setup do
    @showing_user = showing_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showing_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showing_user" do
    assert_difference('ShowingUser.count') do
      post :create, showing_user: { showing_id: @showing_user.showing_id, user_id: @showing_user.user_id }
    end

    assert_redirected_to showing_user_path(assigns(:showing_user))
  end

  test "should show showing_user" do
    get :show, id: @showing_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showing_user
    assert_response :success
  end

  test "should update showing_user" do
    patch :update, id: @showing_user, showing_user: { showing_id: @showing_user.showing_id, user_id: @showing_user.user_id }
    assert_redirected_to showing_user_path(assigns(:showing_user))
  end

  test "should destroy showing_user" do
    assert_difference('ShowingUser.count', -1) do
      delete :destroy, id: @showing_user
    end

    assert_redirected_to showing_users_path
  end
end

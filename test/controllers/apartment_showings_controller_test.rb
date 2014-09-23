require 'test_helper'

class ApartmentShowingsControllerTest < ActionController::TestCase
  setup do
    @apartment_showing = apartment_showings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartment_showings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment_showing" do
    assert_difference('ApartmentShowing.count') do
      post :create, apartment_showing: { apartment_id: @apartment_showing.apartment_id, showing_id: @apartment_showing.showing_id }
    end

    assert_redirected_to apartment_showing_path(assigns(:apartment_showing))
  end

  test "should show apartment_showing" do
    get :show, id: @apartment_showing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment_showing
    assert_response :success
  end

  test "should update apartment_showing" do
    patch :update, id: @apartment_showing, apartment_showing: { apartment_id: @apartment_showing.apartment_id, showing_id: @apartment_showing.showing_id }
    assert_redirected_to apartment_showing_path(assigns(:apartment_showing))
  end

  test "should destroy apartment_showing" do
    assert_difference('ApartmentShowing.count', -1) do
      delete :destroy, id: @apartment_showing
    end

    assert_redirected_to apartment_showings_path
  end
end

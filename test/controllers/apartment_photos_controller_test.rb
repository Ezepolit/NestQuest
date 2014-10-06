require 'test_helper'

class ApartmentPhotosControllerTest < ActionController::TestCase
  setup do
    @apartment_photo = apartment_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartment_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment_photo" do
    assert_difference('ApartmentPhoto.count') do
      post :create, apartment_photo: { apartment_id: @apartment_photo.apartment_id }
    end

    assert_redirected_to apartment_photo_path(assigns(:apartment_photo))
  end

  test "should show apartment_photo" do
    get :show, id: @apartment_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment_photo
    assert_response :success
  end

  test "should update apartment_photo" do
    patch :update, id: @apartment_photo, apartment_photo: { apartment_id: @apartment_photo.apartment_id }
    assert_redirected_to apartment_photo_path(assigns(:apartment_photo))
  end

  test "should destroy apartment_photo" do
    assert_difference('ApartmentPhoto.count', -1) do
      delete :destroy, id: @apartment_photo
    end

    assert_redirected_to apartment_photos_path
  end
end

require 'test_helper'

class TourPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_photo = tour_photos(:one)
  end

  test "should get index" do
    get tour_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_photo_url
    assert_response :success
  end

  test "should create tour_photo" do
    assert_difference('TourPhoto.count') do
      post tour_photos_url, params: { tour_photo: {  } }
    end

    assert_redirected_to tour_photo_url(TourPhoto.last)
  end

  test "should show tour_photo" do
    get tour_photo_url(@tour_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_photo_url(@tour_photo)
    assert_response :success
  end

  test "should update tour_photo" do
    patch tour_photo_url(@tour_photo), params: { tour_photo: {  } }
    assert_redirected_to tour_photo_url(@tour_photo)
  end

  test "should destroy tour_photo" do
    assert_difference('TourPhoto.count', -1) do
      delete tour_photo_url(@tour_photo)
    end

    assert_redirected_to tour_photos_url
  end
end

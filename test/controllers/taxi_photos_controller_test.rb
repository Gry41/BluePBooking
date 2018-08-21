require 'test_helper'

class TaxiPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxi_photo = taxi_photos(:one)
  end

  test "should get index" do
    get taxi_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_taxi_photo_url
    assert_response :success
  end

  test "should create taxi_photo" do
    assert_difference('TaxiPhoto.count') do
      post taxi_photos_url, params: { taxi_photo: {  } }
    end

    assert_redirected_to taxi_photo_url(TaxiPhoto.last)
  end

  test "should show taxi_photo" do
    get taxi_photo_url(@taxi_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_taxi_photo_url(@taxi_photo)
    assert_response :success
  end

  test "should update taxi_photo" do
    patch taxi_photo_url(@taxi_photo), params: { taxi_photo: {  } }
    assert_redirected_to taxi_photo_url(@taxi_photo)
  end

  test "should destroy taxi_photo" do
    assert_difference('TaxiPhoto.count', -1) do
      delete taxi_photo_url(@taxi_photo)
    end

    assert_redirected_to taxi_photos_url
  end
end

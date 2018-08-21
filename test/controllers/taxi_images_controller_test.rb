require 'test_helper'

class TaxiImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxi_image = taxi_images(:one)
  end

  test "should get index" do
    get taxi_images_url
    assert_response :success
  end

  test "should get new" do
    get new_taxi_image_url
    assert_response :success
  end

  test "should create taxi_image" do
    assert_difference('TaxiImage.count') do
      post taxi_images_url, params: { taxi_image: {  } }
    end

    assert_redirected_to taxi_image_url(TaxiImage.last)
  end

  test "should show taxi_image" do
    get taxi_image_url(@taxi_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_taxi_image_url(@taxi_image)
    assert_response :success
  end

  test "should update taxi_image" do
    patch taxi_image_url(@taxi_image), params: { taxi_image: {  } }
    assert_redirected_to taxi_image_url(@taxi_image)
  end

  test "should destroy taxi_image" do
    assert_difference('TaxiImage.count', -1) do
      delete taxi_image_url(@taxi_image)
    end

    assert_redirected_to taxi_images_url
  end
end

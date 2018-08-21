require 'test_helper'

class TourImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_image = tour_images(:one)
  end

  test "should get index" do
    get tour_images_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_image_url
    assert_response :success
  end

  test "should create tour_image" do
    assert_difference('TourImage.count') do
      post tour_images_url, params: { tour_image: {  } }
    end

    assert_redirected_to tour_image_url(TourImage.last)
  end

  test "should show tour_image" do
    get tour_image_url(@tour_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_image_url(@tour_image)
    assert_response :success
  end

  test "should update tour_image" do
    patch tour_image_url(@tour_image), params: { tour_image: {  } }
    assert_redirected_to tour_image_url(@tour_image)
  end

  test "should destroy tour_image" do
    assert_difference('TourImage.count', -1) do
      delete tour_image_url(@tour_image)
    end

    assert_redirected_to tour_images_url
  end
end

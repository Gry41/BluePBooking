require 'test_helper'

class RentImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_image = rent_images(:one)
  end

  test "should get index" do
    get rent_images_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_image_url
    assert_response :success
  end

  test "should create rent_image" do
    assert_difference('RentImage.count') do
      post rent_images_url, params: { rent_image: {  } }
    end

    assert_redirected_to rent_image_url(RentImage.last)
  end

  test "should show rent_image" do
    get rent_image_url(@rent_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_image_url(@rent_image)
    assert_response :success
  end

  test "should update rent_image" do
    patch rent_image_url(@rent_image), params: { rent_image: {  } }
    assert_redirected_to rent_image_url(@rent_image)
  end

  test "should destroy rent_image" do
    assert_difference('RentImage.count', -1) do
      delete rent_image_url(@rent_image)
    end

    assert_redirected_to rent_images_url
  end
end

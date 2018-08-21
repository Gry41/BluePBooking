require 'test_helper'

class TaxiSevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxi_sevice = taxi_sevices(:one)
  end

  test "should get index" do
    get taxi_sevices_url
    assert_response :success
  end

  test "should get new" do
    get new_taxi_sevice_url
    assert_response :success
  end

  test "should create taxi_sevice" do
    assert_difference('TaxiSevice.count') do
      post taxi_sevices_url, params: { taxi_sevice: { name: @taxi_sevice.name, price: @taxi_sevice.price } }
    end

    assert_redirected_to taxi_sevice_url(TaxiSevice.last)
  end

  test "should show taxi_sevice" do
    get taxi_sevice_url(@taxi_sevice)
    assert_response :success
  end

  test "should get edit" do
    get edit_taxi_sevice_url(@taxi_sevice)
    assert_response :success
  end

  test "should update taxi_sevice" do
    patch taxi_sevice_url(@taxi_sevice), params: { taxi_sevice: { name: @taxi_sevice.name, price: @taxi_sevice.price } }
    assert_redirected_to taxi_sevice_url(@taxi_sevice)
  end

  test "should destroy taxi_sevice" do
    assert_difference('TaxiSevice.count', -1) do
      delete taxi_sevice_url(@taxi_sevice)
    end

    assert_redirected_to taxi_sevices_url
  end
end

require 'test_helper'

class TourServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tour_service = tour_services(:one)
  end

  test "should get index" do
    get tour_services_url
    assert_response :success
  end

  test "should get new" do
    get new_tour_service_url
    assert_response :success
  end

  test "should create tour_service" do
    assert_difference('TourService.count') do
      post tour_services_url, params: { tour_service: { description: @tour_service.description, name: @tour_service.name, price: @tour_service.price } }
    end

    assert_redirected_to tour_service_url(TourService.last)
  end

  test "should show tour_service" do
    get tour_service_url(@tour_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_tour_service_url(@tour_service)
    assert_response :success
  end

  test "should update tour_service" do
    patch tour_service_url(@tour_service), params: { tour_service: { description: @tour_service.description, name: @tour_service.name, price: @tour_service.price } }
    assert_redirected_to tour_service_url(@tour_service)
  end

  test "should destroy tour_service" do
    assert_difference('TourService.count', -1) do
      delete tour_service_url(@tour_service)
    end

    assert_redirected_to tour_services_url
  end
end

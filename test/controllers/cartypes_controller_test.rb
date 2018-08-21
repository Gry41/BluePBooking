require 'test_helper'

class CartypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartype = cartypes(:one)
  end

  test "should get index" do
    get cartypes_url
    assert_response :success
  end

  test "should get new" do
    get new_cartype_url
    assert_response :success
  end

  test "should create cartype" do
    assert_difference('Cartype.count') do
      post cartypes_url, params: { cartype: { name: @cartype.name } }
    end

    assert_redirected_to cartype_url(Cartype.last)
  end

  test "should show cartype" do
    get cartype_url(@cartype)
    assert_response :success
  end

  test "should get edit" do
    get edit_cartype_url(@cartype)
    assert_response :success
  end

  test "should update cartype" do
    patch cartype_url(@cartype), params: { cartype: { name: @cartype.name } }
    assert_redirected_to cartype_url(@cartype)
  end

  test "should destroy cartype" do
    assert_difference('Cartype.count', -1) do
      delete cartype_url(@cartype)
    end

    assert_redirected_to cartypes_url
  end
end

require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get store_read_url
    assert_response :success
  end

  test "should get create_location" do
    get store_create_location_url
    assert_response :success
  end

  test "should get create_time" do
    get store_create_time_url
    assert_response :success
  end

  test "should get create_menu" do
    get store_create_menu_url
    assert_response :success
  end

  test "should get delete" do
    get store_delete_url
    assert_response :success
  end

  test "should get modify_location" do
    get store_modify_location_url
    assert_response :success
  end

  test "should get modify_name" do
    get store_modify_name_url
    assert_response :success
  end

  test "should get modify_time" do
    get store_modify_time_url
    assert_response :success
  end

  test "should get modify_menu" do
    get store_modify_menu_url
    assert_response :success
  end

end

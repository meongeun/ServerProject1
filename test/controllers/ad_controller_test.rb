require 'test_helper'

class AdControllerTest < ActionDispatch::IntegrationTest
  test "should get read_short" do
    get ad_read_short_url
    assert_response :success
  end

  test "should get read_long" do
    get ad_read_long_url
    assert_response :success
  end

  test "should get read" do
    get ad_read_url
    assert_response :success
  end

  test "should get create_discount" do
    get ad_create_discount_url
    assert_response :success
  end

  test "should get create_fcfs" do
    get ad_create_fcfs_url
    assert_response :success
  end

  test "should get create_plus" do
    get ad_create_plus_url
    assert_response :success
  end

  test "should get modify_discount" do
    get ad_modify_discount_url
    assert_response :success
  end

  test "should get modify_fcfs" do
    get ad_modify_fcfs_url
    assert_response :success
  end

  test "should get modify_plus" do
    get ad_modify_plus_url
    assert_response :success
  end

  test "should get delete" do
    get ad_delete_url
    assert_response :success
  end

end

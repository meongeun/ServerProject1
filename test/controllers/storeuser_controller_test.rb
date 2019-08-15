require 'test_helper'

class StoreuserControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get storeuser_login_url
    assert_response :success
  end

  test "should get logout" do
    get storeuser_logout_url
    assert_response :success
  end

  test "should get create_target" do
    get storeuser_create_target_url
    assert_response :success
  end

  test "should get modify_target" do
    get storeuser_modify_target_url
    assert_response :success
  end

  test "should get modify_image" do
    get storeuser_modify_image_url
    assert_response :success
  end

  test "should get delete" do
    get storeuser_delete_url
    assert_response :success
  end

  test "should get read" do
    get storeuser_read_url
    assert_response :success
  end

end

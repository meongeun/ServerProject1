require 'test_helper'

class CustomeruserControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get customeruser_login_url
    assert_response :success
  end

  test "should get create_residence" do
    get customeruser_create_residence_url
    assert_response :success
  end

  test "should get read" do
    get customeruser_read_url
    assert_response :success
  end

  test "should get modify_alram" do
    get customeruser_modify_alram_url
    assert_response :success
  end

  test "should get modify_image" do
    get customeruser_modify_image_url
    assert_response :success
  end

  test "should get modify_residence" do
    get customeruser_modify_residence_url
    assert_response :success
  end

  test "should get delete" do
    get customeruser_delete_url
    assert_response :success
  end

  test "should get logout" do
    get customeruser_logout_url
    assert_response :success
  end

  test "should get read_downad" do
    get customeruser_read_downad_url
    assert_response :success
  end

  test "should get read_starstore" do
    get customeruser_read_starstore_url
    assert_response :success
  end

end

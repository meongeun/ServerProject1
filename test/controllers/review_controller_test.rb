require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get review_create_url
    assert_response :success
  end

  test "should get modify" do
    get review_modify_url
    assert_response :success
  end

  test "should get read" do
    get review_read_url
    assert_response :success
  end

  test "should get delete" do
    get review_delete_url
    assert_response :success
  end

end

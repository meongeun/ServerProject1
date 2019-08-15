require 'test_helper'

class WarnControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get warn_create_url
    assert_response :success
  end

end

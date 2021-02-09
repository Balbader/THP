require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get create_post" do
    get post_create_post_url
    assert_response :success
  end

end

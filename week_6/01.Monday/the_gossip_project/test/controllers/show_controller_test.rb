require 'test_helper'

class ShowControllerTest < ActionDispatch::IntegrationTest
  test "should get show_gossip" do
    get show_show_gossip_url
    assert_response :success
  end

end

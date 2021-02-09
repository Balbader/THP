require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get get_in_touch" do
    get contact_get_in_touch_url
    assert_response :success
  end

end

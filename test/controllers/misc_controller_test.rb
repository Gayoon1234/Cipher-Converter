require "test_helper"

class MiscControllerTest < ActionDispatch::IntegrationTest
  test "should get ImageStego" do
    get misc_ImageStego_url
    assert_response :success
  end
end

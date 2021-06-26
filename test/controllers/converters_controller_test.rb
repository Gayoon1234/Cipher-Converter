require "test_helper"

class ConvertersControllerTest < ActionDispatch::IntegrationTest
  test "should get ascii" do
    get converters_ascii_url
    assert_response :success
  end
end

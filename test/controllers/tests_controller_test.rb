require "test_helper"

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get testPage" do
    get tests_testPage_url
    assert_response :success
  end
end

require "test_helper"

class AnalysisControllerTest < ActionDispatch::IntegrationTest
  test "should get LetterFrequency" do
    get analysis_LetterFrequency_url
    assert_response :success
  end
end

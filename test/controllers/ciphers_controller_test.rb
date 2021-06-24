require "test_helper"

class CiphersControllerTest < ActionDispatch::IntegrationTest
  test "should get vigenere" do
    get ciphers_vigenere_url
    assert_response :success
  end

  test "should get ceaser" do
    get ciphers_ceaser_url
    assert_response :success
  end

  test "should get rot13" do
    get ciphers_rot13_url
    assert_response :success
  end

  test "should get rot47" do
    get ciphers_rot47_url
    assert_response :success
  end

  test "should get randomSub" do
    get ciphers_randomSub_url
    assert_response :success
  end
end

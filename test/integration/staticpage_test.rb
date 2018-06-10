require 'test_helper'

class StaticpageTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get about" do
    get static_page_about_url
    assert _response :success
  end
end

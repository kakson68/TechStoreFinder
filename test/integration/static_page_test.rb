require 'test_helper'

class StaticPageTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  
end

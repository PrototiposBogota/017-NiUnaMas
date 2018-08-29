require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get static_pages_landing_url
    assert_response :success
  end

  test "should get root" do
    get '/'
    assert_response :success
  end
  

end

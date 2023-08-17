require 'test_helper'

class MyuserControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get myuser_edit_url
    assert_response :success
  end

end

require 'test_helper'

class PiratesControllerTest < ActionDispatch::IntegrationTest
  test "should get index_users" do
    get pirates_index_users_url
    assert_response :success
  end

  test "should get show_user" do
    get pirates_show_user_url
    assert_response :success
  end

end

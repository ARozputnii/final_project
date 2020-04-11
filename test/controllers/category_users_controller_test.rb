require 'test_helper'

class CategoryUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get category_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get category_users_update_url
    assert_response :success
  end

end

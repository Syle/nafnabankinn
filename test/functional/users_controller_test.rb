require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get remove_name" do
    get :remove_name
    assert_response :success
  end

end

require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end

require 'test_helper'

class NamesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get random" do
    get :random
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end

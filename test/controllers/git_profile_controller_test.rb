require 'test_helper'

class GitProfileControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get profile_page" do
    get :profile_page
    assert_response :success
  end

end

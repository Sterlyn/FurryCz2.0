require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get overview" do
    get :overview
    assert_response :success
  end

  test "should get bookmarks" do
    get :bookmarks
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get pw_change_form" do
    get :pw_change_form
    assert_response :success
  end

  test "should get pw_change" do
    get :pw_change
    assert_response :success
  end

  test "should get profile_edit" do
    get :profile_edit
    assert_response :success
  end

  test "should get profile_save" do
    get :profile_save
    assert_response :success
  end

end

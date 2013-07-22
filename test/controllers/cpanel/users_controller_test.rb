require 'test_helper'

class Cpanel::UsersControllerTest < ActionController::TestCase
  setup do
    @cpanel_user = cpanel_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_user" do
    assert_difference('Cpanel::User.count') do
      post :create, cpanel_user: { avatar: @cpanel_user.avatar, email: @cpanel_user.email, mobile: @cpanel_user.mobile, name: @cpanel_user.name, nick: @cpanel_user.nick }
    end

    assert_redirected_to cpanel_user_path(assigns(:cpanel_user))
  end

  test "should show cpanel_user" do
    get :show, id: @cpanel_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_user
    assert_response :success
  end

  test "should update cpanel_user" do
    patch :update, id: @cpanel_user, cpanel_user: { avatar: @cpanel_user.avatar, email: @cpanel_user.email, mobile: @cpanel_user.mobile, name: @cpanel_user.name, nick: @cpanel_user.nick }
    assert_redirected_to cpanel_user_path(assigns(:cpanel_user))
  end

  test "should destroy cpanel_user" do
    assert_difference('Cpanel::User.count', -1) do
      delete :destroy, id: @cpanel_user
    end

    assert_redirected_to cpanel_users_path
  end
end

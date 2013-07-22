require 'test_helper'

class Cpanel::SectionsControllerTest < ActionController::TestCase
  setup do
    @cpanel_section = cpanel_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_section" do
    assert_difference('Cpanel::Section.count') do
      post :create, cpanel_section: { name: @cpanel_section.name, sort: @cpanel_section.sort }
    end

    assert_redirected_to cpanel_section_path(assigns(:cpanel_section))
  end

  test "should show cpanel_section" do
    get :show, id: @cpanel_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_section
    assert_response :success
  end

  test "should update cpanel_section" do
    patch :update, id: @cpanel_section, cpanel_section: { name: @cpanel_section.name, sort: @cpanel_section.sort }
    assert_redirected_to cpanel_section_path(assigns(:cpanel_section))
  end

  test "should destroy cpanel_section" do
    assert_difference('Cpanel::Section.count', -1) do
      delete :destroy, id: @cpanel_section
    end

    assert_redirected_to cpanel_sections_path
  end
end

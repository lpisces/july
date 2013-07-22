require 'test_helper'

class Cpanel::NodesControllerTest < ActionController::TestCase
  setup do
    @cpanel_node = cpanel_nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpanel_nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpanel_node" do
    assert_difference('Cpanel::Node.count') do
      post :create, cpanel_node: { cnt: @cpanel_node.cnt, description: @cpanel_node.description, name: @cpanel_node.name, section_id: @cpanel_node.section_id, sort: @cpanel_node.sort }
    end

    assert_redirected_to cpanel_node_path(assigns(:cpanel_node))
  end

  test "should show cpanel_node" do
    get :show, id: @cpanel_node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpanel_node
    assert_response :success
  end

  test "should update cpanel_node" do
    patch :update, id: @cpanel_node, cpanel_node: { cnt: @cpanel_node.cnt, description: @cpanel_node.description, name: @cpanel_node.name, section_id: @cpanel_node.section_id, sort: @cpanel_node.sort }
    assert_redirected_to cpanel_node_path(assigns(:cpanel_node))
  end

  test "should destroy cpanel_node" do
    assert_difference('Cpanel::Node.count', -1) do
      delete :destroy, id: @cpanel_node
    end

    assert_redirected_to cpanel_nodes_path
  end
end

require 'test_helper'

class TabsControllerTest < ActionController::TestCase
  setup do
    @tab = tabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tab" do
    assert_difference('Tab.count') do
      post :create, tab: { admin_text: @tab.admin_text, note: @tab.note, read_only_text: @tab.read_only_text, standard_text: @tab.standard_text, workflow_text: @tab.workflow_text }
    end

    assert_redirected_to tab_path(assigns(:tab))
  end

  test "should show tab" do
    get :show, id: @tab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tab
    assert_response :success
  end

  test "should update tab" do
    put :update, id: @tab, tab: { admin_text: @tab.admin_text, note: @tab.note, read_only_text: @tab.read_only_text, standard_text: @tab.standard_text, workflow_text: @tab.workflow_text }
    assert_redirected_to tab_path(assigns(:tab))
  end

  test "should destroy tab" do
    assert_difference('Tab.count', -1) do
      delete :destroy, id: @tab
    end

    assert_redirected_to tabs_path
  end
end

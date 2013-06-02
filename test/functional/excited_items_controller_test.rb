require 'test_helper'

class ExcitedItemsControllerTest < ActionController::TestCase
  setup do
    @excited_item = excited_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:excited_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create excited_item" do
    assert_difference('ExcitedItem.count') do
      post :create, excited_item: {  }
    end

    assert_redirected_to excited_item_path(assigns(:excited_item))
  end

  test "should show excited_item" do
    get :show, id: @excited_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @excited_item
    assert_response :success
  end

  test "should update excited_item" do
    put :update, id: @excited_item, excited_item: {  }
    assert_redirected_to excited_item_path(assigns(:excited_item))
  end

  test "should destroy excited_item" do
    assert_difference('ExcitedItem.count', -1) do
      delete :destroy, id: @excited_item
    end

    assert_redirected_to excited_items_path
  end
end

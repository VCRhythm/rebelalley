require 'test_helper'

class WorriedItemsControllerTest < ActionController::TestCase
  setup do
    @worried_item = worried_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worried_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worried_item" do
    assert_difference('WorriedItem.count') do
      post :create, worried_item: {  }
    end

    assert_redirected_to worried_item_path(assigns(:worried_item))
  end

  test "should show worried_item" do
    get :show, id: @worried_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worried_item
    assert_response :success
  end

  test "should update worried_item" do
    put :update, id: @worried_item, worried_item: {  }
    assert_redirected_to worried_item_path(assigns(:worried_item))
  end

  test "should destroy worried_item" do
    assert_difference('WorriedItem.count', -1) do
      delete :destroy, id: @worried_item
    end

    assert_redirected_to worried_items_path
  end
end

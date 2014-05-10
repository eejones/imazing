require 'test_helper'

class OverallcategoriesControllerTest < ActionController::TestCase
  setup do
    @overallcategory = overallcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:overallcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create overallcategory" do
    assert_difference('Overallcategory.count') do
      post :create, overallcategory: { name: @overallcategory.name, product_id: @overallcategory.product_id }
    end

    assert_redirected_to overallcategory_path(assigns(:overallcategory))
  end

  test "should show overallcategory" do
    get :show, id: @overallcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @overallcategory
    assert_response :success
  end

  test "should update overallcategory" do
    patch :update, id: @overallcategory, overallcategory: { name: @overallcategory.name, product_id: @overallcategory.product_id }
    assert_redirected_to overallcategory_path(assigns(:overallcategory))
  end

  test "should destroy overallcategory" do
    assert_difference('Overallcategory.count', -1) do
      delete :destroy, id: @overallcategory
    end

    assert_redirected_to overallcategories_path
  end
end

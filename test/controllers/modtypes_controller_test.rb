require 'test_helper'

class ModtypesControllerTest < ActionController::TestCase
  setup do
    @modtype = modtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modtype" do
    assert_difference('Modtype.count') do
      post :create, modtype: { name: @modtype.name }
    end

    assert_redirected_to modtype_path(assigns(:modtype))
  end

  test "should show modtype" do
    get :show, id: @modtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modtype
    assert_response :success
  end

  test "should update modtype" do
    patch :update, id: @modtype, modtype: { name: @modtype.name }
    assert_redirected_to modtype_path(assigns(:modtype))
  end

  test "should destroy modtype" do
    assert_difference('Modtype.count', -1) do
      delete :destroy, id: @modtype
    end

    assert_redirected_to modtypes_path
  end
end

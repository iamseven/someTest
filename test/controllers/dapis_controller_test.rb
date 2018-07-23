require 'test_helper'

class DapisControllerTest < ActionController::TestCase
  setup do
    @dapi = dapis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dapis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dapi" do
    assert_difference('Dapi.count') do
      post :create, dapi: { name: @dapi.name }
    end

    assert_redirected_to dapi_path(assigns(:dapi))
  end

  test "should show dapi" do
    get :show, id: @dapi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dapi
    assert_response :success
  end

  test "should update dapi" do
    patch :update, id: @dapi, dapi: { name: @dapi.name }
    assert_redirected_to dapi_path(assigns(:dapi))
  end

  test "should destroy dapi" do
    assert_difference('Dapi.count', -1) do
      delete :destroy, id: @dapi
    end

    assert_redirected_to dapis_path
  end
end

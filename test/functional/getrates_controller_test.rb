require 'test_helper'

class GetratesControllerTest < ActionController::TestCase
  setup do
    @getrate = getrates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getrates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getrate" do
    assert_difference('Getrate.count') do
      post :create, getrate: {  }
    end

    assert_redirected_to getrate_path(assigns(:getrate))
  end

  test "should show getrate" do
    get :show, id: @getrate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getrate
    assert_response :success
  end

  test "should update getrate" do
    put :update, id: @getrate, getrate: {  }
    assert_redirected_to getrate_path(assigns(:getrate))
  end

  test "should destroy getrate" do
    assert_difference('Getrate.count', -1) do
      delete :destroy, id: @getrate
    end

    assert_redirected_to getrates_path
  end
end

require 'test_helper'

class GetavailfbsControllerTest < ActionController::TestCase
  setup do
    @getavailfb = getavailfbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getavailfbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getavailfb" do
    assert_difference('Getavailfb.count') do
      post :create, getavailfb: {  }
    end

    assert_redirected_to getavailfb_path(assigns(:getavailfb))
  end

  test "should show getavailfb" do
    get :show, id: @getavailfb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getavailfb
    assert_response :success
  end

  test "should update getavailfb" do
    put :update, id: @getavailfb, getavailfb: {  }
    assert_redirected_to getavailfb_path(assigns(:getavailfb))
  end

  test "should destroy getavailfb" do
    assert_difference('Getavailfb.count', -1) do
      delete :destroy, id: @getavailfb
    end

    assert_redirected_to getavailfbs_path
  end
end

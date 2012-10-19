require 'test_helper'

class GetcommissionstatusesControllerTest < ActionController::TestCase
  setup do
    @getcommissionstatus = getcommissionstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getcommissionstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getcommissionstatus" do
    assert_difference('Getcommissionstatus.count') do
      post :create, getcommissionstatus: {  }
    end

    assert_redirected_to getcommissionstatus_path(assigns(:getcommissionstatus))
  end

  test "should show getcommissionstatus" do
    get :show, id: @getcommissionstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getcommissionstatus
    assert_response :success
  end

  test "should update getcommissionstatus" do
    put :update, id: @getcommissionstatus, getcommissionstatus: {  }
    assert_redirected_to getcommissionstatus_path(assigns(:getcommissionstatus))
  end

  test "should destroy getcommissionstatus" do
    assert_difference('Getcommissionstatus.count', -1) do
      delete :destroy, id: @getcommissionstatus
    end

    assert_redirected_to getcommissionstatuses_path
  end
end

require 'test_helper'

class SetdsControllerTest < ActionController::TestCase
  setup do
    @setd = setds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setd" do
    assert_difference('Setd.count') do
      post :create, setd: {  }
    end

    assert_redirected_to setd_path(assigns(:setd))
  end

  test "should show setd" do
    get :show, id: @setd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setd
    assert_response :success
  end

  test "should update setd" do
    put :update, id: @setd, setd: {  }
    assert_redirected_to setd_path(assigns(:setd))
  end

  test "should destroy setd" do
    assert_difference('Setd.count', -1) do
      delete :destroy, id: @setd
    end

    assert_redirected_to setds_path
  end
end

require 'test_helper'

class GetroomratecodefbsControllerTest < ActionController::TestCase
  setup do
    @getroomratecodefb = getroomratecodefbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getroomratecodefbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getroomratecodefb" do
    assert_difference('Getroomratecodefb.count') do
      post :create, getroomratecodefb: {  }
    end

    assert_redirected_to getroomratecodefb_path(assigns(:getroomratecodefb))
  end

  test "should show getroomratecodefb" do
    get :show, id: @getroomratecodefb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getroomratecodefb
    assert_response :success
  end

  test "should update getroomratecodefb" do
    put :update, id: @getroomratecodefb, getroomratecodefb: {  }
    assert_redirected_to getroomratecodefb_path(assigns(:getroomratecodefb))
  end

  test "should destroy getroomratecodefb" do
    assert_difference('Getroomratecodefb.count', -1) do
      delete :destroy, id: @getroomratecodefb
    end

    assert_redirected_to getroomratecodefbs_path
  end
end

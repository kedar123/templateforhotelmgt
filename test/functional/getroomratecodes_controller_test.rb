require 'test_helper'

class GetroomratecodesControllerTest < ActionController::TestCase
  setup do
    @getroomratecode = getroomratecodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getroomratecodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getroomratecode" do
    assert_difference('Getroomratecode.count') do
      post :create, getroomratecode: {  }
    end

    assert_redirected_to getroomratecode_path(assigns(:getroomratecode))
  end

  test "should show getroomratecode" do
    get :show, id: @getroomratecode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getroomratecode
    assert_response :success
  end

  test "should update getroomratecode" do
    put :update, id: @getroomratecode, getroomratecode: {  }
    assert_redirected_to getroomratecode_path(assigns(:getroomratecode))
  end

  test "should destroy getroomratecode" do
    assert_difference('Getroomratecode.count', -1) do
      delete :destroy, id: @getroomratecode
    end

    assert_redirected_to getroomratecodes_path
  end
end

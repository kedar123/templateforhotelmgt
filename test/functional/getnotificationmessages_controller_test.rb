require 'test_helper'

class GetnotificationmessagesControllerTest < ActionController::TestCase
  setup do
    @getnotificationmessage = getnotificationmessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getnotificationmessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getnotificationmessage" do
    assert_difference('Getnotificationmessage.count') do
      post :create, getnotificationmessage: {  }
    end

    assert_redirected_to getnotificationmessage_path(assigns(:getnotificationmessage))
  end

  test "should show getnotificationmessage" do
    get :show, id: @getnotificationmessage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getnotificationmessage
    assert_response :success
  end

  test "should update getnotificationmessage" do
    put :update, id: @getnotificationmessage, getnotificationmessage: {  }
    assert_redirected_to getnotificationmessage_path(assigns(:getnotificationmessage))
  end

  test "should destroy getnotificationmessage" do
    assert_difference('Getnotificationmessage.count', -1) do
      delete :destroy, id: @getnotificationmessage
    end

    assert_redirected_to getnotificationmessages_path
  end
end

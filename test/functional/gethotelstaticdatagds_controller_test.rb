require 'test_helper'

class GethotelstaticdatagdsControllerTest < ActionController::TestCase
  setup do
    @gethotelstaticdatagd = gethotelstaticdatagds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gethotelstaticdatagds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gethotelstaticdatagd" do
    assert_difference('Gethotelstaticdatagd.count') do
      post :create, gethotelstaticdatagd: {  }
    end

    assert_redirected_to gethotelstaticdatagd_path(assigns(:gethotelstaticdatagd))
  end

  test "should show gethotelstaticdatagd" do
    get :show, id: @gethotelstaticdatagd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gethotelstaticdatagd
    assert_response :success
  end

  test "should update gethotelstaticdatagd" do
    put :update, id: @gethotelstaticdatagd, gethotelstaticdatagd: {  }
    assert_redirected_to gethotelstaticdatagd_path(assigns(:gethotelstaticdatagd))
  end

  test "should destroy gethotelstaticdatagd" do
    assert_difference('Gethotelstaticdatagd.count', -1) do
      delete :destroy, id: @gethotelstaticdatagd
    end

    assert_redirected_to gethotelstaticdatagds_path
  end
end

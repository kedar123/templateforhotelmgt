require 'test_helper'

class GethotelstaticdataControllerTest < ActionController::TestCase
  setup do
    @gethotelstaticdatum = gethotelstaticdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gethotelstaticdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gethotelstaticdatum" do
    assert_difference('Gethotelstaticdatum.count') do
      post :create, gethotelstaticdatum: {  }
    end

    assert_redirected_to gethotelstaticdatum_path(assigns(:gethotelstaticdatum))
  end

  test "should show gethotelstaticdatum" do
    get :show, id: @gethotelstaticdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gethotelstaticdatum
    assert_response :success
  end

  test "should update gethotelstaticdatum" do
    put :update, id: @gethotelstaticdatum, gethotelstaticdatum: {  }
    assert_redirected_to gethotelstaticdatum_path(assigns(:gethotelstaticdatum))
  end

  test "should destroy gethotelstaticdatum" do
    assert_difference('Gethotelstaticdatum.count', -1) do
      delete :destroy, id: @gethotelstaticdatum
    end

    assert_redirected_to gethotelstaticdata_path
  end
end

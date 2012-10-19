require 'test_helper'

class GetratesdbsControllerTest < ActionController::TestCase
  setup do
    @getratesdb = getratesdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getratesdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getratesdb" do
    assert_difference('Getratesdb.count') do
      post :create, getratesdb: {  }
    end

    assert_redirected_to getratesdb_path(assigns(:getratesdb))
  end

  test "should show getratesdb" do
    get :show, id: @getratesdb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getratesdb
    assert_response :success
  end

  test "should update getratesdb" do
    put :update, id: @getratesdb, getratesdb: {  }
    assert_redirected_to getratesdb_path(assigns(:getratesdb))
  end

  test "should destroy getratesdb" do
    assert_difference('Getratesdb.count', -1) do
      delete :destroy, id: @getratesdb
    end

    assert_redirected_to getratesdbs_path
  end
end

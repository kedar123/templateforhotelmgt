require 'test_helper'

class UpdateretesControllerTest < ActionController::TestCase
  setup do
    @updaterete = updateretes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updateretes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updaterete" do
    assert_difference('Updaterete.count') do
      post :create, updaterete: {  }
    end

    assert_redirected_to updaterete_path(assigns(:updaterete))
  end

  test "should show updaterete" do
    get :show, id: @updaterete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updaterete
    assert_response :success
  end

  test "should update updaterete" do
    put :update, id: @updaterete, updaterete: {  }
    assert_redirected_to updaterete_path(assigns(:updaterete))
  end

  test "should destroy updaterete" do
    assert_difference('Updaterete.count', -1) do
      delete :destroy, id: @updaterete
    end

    assert_redirected_to updateretes_path
  end
end

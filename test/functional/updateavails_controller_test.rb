require 'test_helper'

class UpdateavailsControllerTest < ActionController::TestCase
  setup do
    @updateavail = updateavails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updateavails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updateavail" do
    assert_difference('Updateavail.count') do
      post :create, updateavail: {  }
    end

    assert_redirected_to updateavail_path(assigns(:updateavail))
  end

  test "should show updateavail" do
    get :show, id: @updateavail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updateavail
    assert_response :success
  end

  test "should update updateavail" do
    put :update, id: @updateavail, updateavail: {  }
    assert_redirected_to updateavail_path(assigns(:updateavail))
  end

  test "should destroy updateavail" do
    assert_difference('Updateavail.count', -1) do
      delete :destroy, id: @updateavail
    end

    assert_redirected_to updateavails_path
  end
end

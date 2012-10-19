require 'test_helper'

class UpdatebookingsControllerTest < ActionController::TestCase
  setup do
    @updatebooking = updatebookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updatebookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updatebooking" do
    assert_difference('Updatebooking.count') do
      post :create, updatebooking: {  }
    end

    assert_redirected_to updatebooking_path(assigns(:updatebooking))
  end

  test "should show updatebooking" do
    get :show, id: @updatebooking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updatebooking
    assert_response :success
  end

  test "should update updatebooking" do
    put :update, id: @updatebooking, updatebooking: {  }
    assert_redirected_to updatebooking_path(assigns(:updatebooking))
  end

  test "should destroy updatebooking" do
    assert_difference('Updatebooking.count', -1) do
      delete :destroy, id: @updatebooking
    end

    assert_redirected_to updatebookings_path
  end
end

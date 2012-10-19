require 'test_helper'

class CancelbookingsControllerTest < ActionController::TestCase
  setup do
    @cancelbooking = cancelbookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancelbookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancelbooking" do
    assert_difference('Cancelbooking.count') do
      post :create, cancelbooking: {  }
    end

    assert_redirected_to cancelbooking_path(assigns(:cancelbooking))
  end

  test "should show cancelbooking" do
    get :show, id: @cancelbooking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancelbooking
    assert_response :success
  end

  test "should update cancelbooking" do
    put :update, id: @cancelbooking, cancelbooking: {  }
    assert_redirected_to cancelbooking_path(assigns(:cancelbooking))
  end

  test "should destroy cancelbooking" do
    assert_difference('Cancelbooking.count', -1) do
      delete :destroy, id: @cancelbooking
    end

    assert_redirected_to cancelbookings_path
  end
end

require 'test_helper'

class GetbookingsControllerTest < ActionController::TestCase
  setup do
    @getbooking = getbookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getbookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getbooking" do
    assert_difference('Getbooking.count') do
      post :create, getbooking: {  }
    end

    assert_redirected_to getbooking_path(assigns(:getbooking))
  end

  test "should show getbooking" do
    get :show, id: @getbooking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getbooking
    assert_response :success
  end

  test "should update getbooking" do
    put :update, id: @getbooking, getbooking: {  }
    assert_redirected_to getbooking_path(assigns(:getbooking))
  end

  test "should destroy getbooking" do
    assert_difference('Getbooking.count', -1) do
      delete :destroy, id: @getbooking
    end

    assert_redirected_to getbookings_path
  end
end

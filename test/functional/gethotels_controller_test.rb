require 'test_helper'

class GethotelsControllerTest < ActionController::TestCase
  setup do
    @gethotel = gethotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gethotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gethotel" do
    assert_difference('Gethotel.count') do
      post :create, gethotel: {  }
    end

    assert_redirected_to gethotel_path(assigns(:gethotel))
  end

  test "should show gethotel" do
    get :show, id: @gethotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gethotel
    assert_response :success
  end

  test "should update gethotel" do
    put :update, id: @gethotel, gethotel: {  }
    assert_redirected_to gethotel_path(assigns(:gethotel))
  end

  test "should destroy gethotel" do
    assert_difference('Gethotel.count', -1) do
      delete :destroy, id: @gethotel
    end

    assert_redirected_to gethotels_path
  end
end

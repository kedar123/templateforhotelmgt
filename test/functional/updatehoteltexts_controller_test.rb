require 'test_helper'

class UpdatehoteltextsControllerTest < ActionController::TestCase
  setup do
    @updatehoteltext = updatehoteltexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:updatehoteltexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create updatehoteltext" do
    assert_difference('Updatehoteltext.count') do
      post :create, updatehoteltext: {  }
    end

    assert_redirected_to updatehoteltext_path(assigns(:updatehoteltext))
  end

  test "should show updatehoteltext" do
    get :show, id: @updatehoteltext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @updatehoteltext
    assert_response :success
  end

  test "should update updatehoteltext" do
    put :update, id: @updatehoteltext, updatehoteltext: {  }
    assert_redirected_to updatehoteltext_path(assigns(:updatehoteltext))
  end

  test "should destroy updatehoteltext" do
    assert_difference('Updatehoteltext.count', -1) do
      delete :destroy, id: @updatehoteltext
    end

    assert_redirected_to updatehoteltexts_path
  end
end

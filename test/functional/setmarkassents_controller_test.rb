require 'test_helper'

class SetmarkassentsControllerTest < ActionController::TestCase
  setup do
    @setmarkassent = setmarkassents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setmarkassents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setmarkassent" do
    assert_difference('Setmarkassent.count') do
      post :create, setmarkassent: {  }
    end

    assert_redirected_to setmarkassent_path(assigns(:setmarkassent))
  end

  test "should show setmarkassent" do
    get :show, id: @setmarkassent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setmarkassent
    assert_response :success
  end

  test "should update setmarkassent" do
    put :update, id: @setmarkassent, setmarkassent: {  }
    assert_redirected_to setmarkassent_path(assigns(:setmarkassent))
  end

  test "should destroy setmarkassent" do
    assert_difference('Setmarkassent.count', -1) do
      delete :destroy, id: @setmarkassent
    end

    assert_redirected_to setmarkassents_path
  end
end

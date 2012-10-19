require 'test_helper'

class GetinvoicedataControllerTest < ActionController::TestCase
  setup do
    @getinvoicedatum = getinvoicedata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getinvoicedata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getinvoicedatum" do
    assert_difference('Getinvoicedatum.count') do
      post :create, getinvoicedatum: {  }
    end

    assert_redirected_to getinvoicedatum_path(assigns(:getinvoicedatum))
  end

  test "should show getinvoicedatum" do
    get :show, id: @getinvoicedatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getinvoicedatum
    assert_response :success
  end

  test "should update getinvoicedatum" do
    put :update, id: @getinvoicedatum, getinvoicedatum: {  }
    assert_redirected_to getinvoicedatum_path(assigns(:getinvoicedatum))
  end

  test "should destroy getinvoicedatum" do
    assert_difference('Getinvoicedatum.count', -1) do
      delete :destroy, id: @getinvoicedatum
    end

    assert_redirected_to getinvoicedata_path
  end
end

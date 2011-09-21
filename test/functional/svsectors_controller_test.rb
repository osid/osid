require 'test_helper'

class SvsectorsControllerTest < ActionController::TestCase
  setup do
    @svsector = svsectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:svsectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create svsector" do
    assert_difference('Svsector.count') do
      post :create, :svsector => @svsector.attributes
    end

    assert_redirected_to svsector_path(assigns(:svsector))
  end

  test "should show svsector" do
    get :show, :id => @svsector.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @svsector.to_param
    assert_response :success
  end

  test "should update svsector" do
    put :update, :id => @svsector.to_param, :svsector => @svsector.attributes
    assert_redirected_to svsector_path(assigns(:svsector))
  end

  test "should destroy svsector" do
    assert_difference('Svsector.count', -1) do
      delete :destroy, :id => @svsector.to_param
    end

    assert_redirected_to svsectors_path
  end
end

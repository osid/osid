require 'test_helper'

class PvsectorsControllerTest < ActionController::TestCase
  setup do
    @pvsector = pvsectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pvsectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pvsector" do
    assert_difference('Pvsector.count') do
      post :create, :pvsector => @pvsector.attributes
    end

    assert_redirected_to pvsector_path(assigns(:pvsector))
  end

  test "should show pvsector" do
    get :show, :id => @pvsector.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pvsector.to_param
    assert_response :success
  end

  test "should update pvsector" do
    put :update, :id => @pvsector.to_param, :pvsector => @pvsector.attributes
    assert_redirected_to pvsector_path(assigns(:pvsector))
  end

  test "should destroy pvsector" do
    assert_difference('Pvsector.count', -1) do
      delete :destroy, :id => @pvsector.to_param
    end

    assert_redirected_to pvsectors_path
  end
end

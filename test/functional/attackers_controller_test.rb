require 'test_helper'

class AttackersControllerTest < ActionController::TestCase
  setup do
    @attacker = attackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attacker" do
    assert_difference('Attacker.count') do
      post :create, :attacker => @attacker.attributes
    end

    assert_redirected_to attacker_path(assigns(:attacker))
  end

  test "should show attacker" do
    get :show, :id => @attacker.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attacker.to_param
    assert_response :success
  end

  test "should update attacker" do
    put :update, :id => @attacker.to_param, :attacker => @attacker.attributes
    assert_redirected_to attacker_path(assigns(:attacker))
  end

  test "should destroy attacker" do
    assert_difference('Attacker.count', -1) do
      delete :destroy, :id => @attacker.to_param
    end

    assert_redirected_to attackers_path
  end
end

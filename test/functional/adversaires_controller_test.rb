require 'test_helper'

class AdversairesControllerTest < ActionController::TestCase
  setup do
    @adversaire = adversaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adversaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adversaire" do
    assert_difference('Adversaire.count') do
      post :create, :adversaire => { :nom => @adversaire.nom }
    end

    assert_redirected_to adversaire_path(assigns(:adversaire))
  end

  test "should show adversaire" do
    get :show, :id => @adversaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @adversaire
    assert_response :success
  end

  test "should update adversaire" do
    put :update, :id => @adversaire, :adversaire => { :nom => @adversaire.nom }
    assert_redirected_to adversaire_path(assigns(:adversaire))
  end

  test "should destroy adversaire" do
    assert_difference('Adversaire.count', -1) do
      delete :destroy, :id => @adversaire
    end

    assert_redirected_to adversaires_path
  end
end

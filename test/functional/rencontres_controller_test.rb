require 'test_helper'

class RencontresControllerTest < ActionController::TestCase
  setup do
    @rencontre = rencontres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rencontres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rencontre" do
    assert_difference('Rencontre.count') do
      post :create, :rencontre => { :domicile => @rencontre.domicile, :exempt => @rencontre.exempt, :heure => @rencontre.heure, :jour => @rencontre.jour, :numero => @rencontre.numero, :reportee => @rencontre.reportee }
    end

    assert_redirected_to rencontre_path(assigns(:rencontre))
  end

  test "should show rencontre" do
    get :show, :id => @rencontre
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rencontre
    assert_response :success
  end

  test "should update rencontre" do
    put :update, :id => @rencontre, :rencontre => { :domicile => @rencontre.domicile, :exempt => @rencontre.exempt, :heure => @rencontre.heure, :jour => @rencontre.jour, :numero => @rencontre.numero, :reportee => @rencontre.reportee }
    assert_redirected_to rencontre_path(assigns(:rencontre))
  end

  test "should destroy rencontre" do
    assert_difference('Rencontre.count', -1) do
      delete :destroy, :id => @rencontre
    end

    assert_redirected_to rencontres_path
  end
end

require 'test_helper'

class IndividusControllerTest < ActionController::TestCase
  setup do
    @individu = individus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:individus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create individu" do
    assert_difference('Individu.count') do
      post :create, individu: { date_de_naissance: @individu.date_de_naissance, nom: @individu.nom, prenom: @individu.prenom, sexe: @individu.sexe }
    end

    assert_redirected_to individu_path(assigns(:individu))
  end

  test "should show individu" do
    get :show, id: @individu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @individu
    assert_response :success
  end

  test "should update individu" do
    put :update, id: @individu, individu: { date_de_naissance: @individu.date_de_naissance, nom: @individu.nom, prenom: @individu.prenom, sexe: @individu.sexe }
    assert_redirected_to individu_path(assigns(:individu))
  end

  test "should destroy individu" do
    assert_difference('Individu.count', -1) do
      delete :destroy, id: @individu
    end

    assert_redirected_to individus_path
  end
end

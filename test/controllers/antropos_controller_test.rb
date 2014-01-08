require 'test_helper'

class AntroposControllerTest < ActionController::TestCase
  setup do
    @antropo = antropos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:antropos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create antropo" do
    assert_difference('Antropo.count') do
      post :create, antropo: { abdomen: @antropo.abdomen, aluno_id: @antropo.aluno_id, antebraco_dir: @antropo.antebraco_dir, antebraco_esq: @antropo.antebraco_esq, braco_dir: @antropo.braco_dir, braco_esq: @antropo.braco_esq, cintura: @antropo.cintura, coxa_dir: @antropo.coxa_dir, coxa_esq: @antropo.coxa_esq, estatura: @antropo.estatura, ombro: @antropo.ombro, panturrilha_dir: @antropo.panturrilha_dir, panturrilha_esq: @antropo.panturrilha_esq, pescoco: @antropo.pescoco, quadril: @antropo.quadril, torax: @antropo.torax }
    end

    assert_redirected_to antropo_path(assigns(:antropo))
  end

  test "should show antropo" do
    get :show, id: @antropo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @antropo
    assert_response :success
  end

  test "should update antropo" do
    patch :update, id: @antropo, antropo: { abdomen: @antropo.abdomen, aluno_id: @antropo.aluno_id, antebraco_dir: @antropo.antebraco_dir, antebraco_esq: @antropo.antebraco_esq, braco_dir: @antropo.braco_dir, braco_esq: @antropo.braco_esq, cintura: @antropo.cintura, coxa_dir: @antropo.coxa_dir, coxa_esq: @antropo.coxa_esq, estatura: @antropo.estatura, ombro: @antropo.ombro, panturrilha_dir: @antropo.panturrilha_dir, panturrilha_esq: @antropo.panturrilha_esq, pescoco: @antropo.pescoco, quadril: @antropo.quadril, torax: @antropo.torax }
    assert_redirected_to antropo_path(assigns(:antropo))
  end

  test "should destroy antropo" do
    assert_difference('Antropo.count', -1) do
      delete :destroy, id: @antropo
    end

    assert_redirected_to antropos_path
  end
end

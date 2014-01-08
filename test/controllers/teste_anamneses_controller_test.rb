require 'test_helper'

class TesteAnamnesesControllerTest < ActionController::TestCase
  setup do
    @teste_anamnese = teste_anamneses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teste_anamneses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teste_anamnese" do
    assert_difference('TesteAnamnese.count') do
      post :create, teste_anamnese: { alergia: @teste_anamnese.alergia, altura: @teste_anamnese.altura, aluno_id: @teste_anamnese.aluno_id, anemia: @teste_anamnese.anemia, cirurgia: @teste_anamnese.cirurgia, condicionamento: @teste_anamnese.condicionamento, dieta: @teste_anamnese.dieta, doenca: @teste_anamnese.doenca, emergencia: @teste_anamnese.emergencia, fumante: @teste_anamnese.fumante, lesao: @teste_anamnese.lesao, medicacao: @teste_anamnese.medicacao, meta: @teste_anamnese.meta, observacao: @teste_anamnese.observacao, peso: @teste_anamnese.peso, telefone: @teste_anamnese.telefone, tipo_sanguineo: @teste_anamnese.tipo_sanguineo }
    end

    assert_redirected_to teste_anamnese_path(assigns(:teste_anamnese))
  end

  test "should show teste_anamnese" do
    get :show, id: @teste_anamnese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teste_anamnese
    assert_response :success
  end

  test "should update teste_anamnese" do
    patch :update, id: @teste_anamnese, teste_anamnese: { alergia: @teste_anamnese.alergia, altura: @teste_anamnese.altura, aluno_id: @teste_anamnese.aluno_id, anemia: @teste_anamnese.anemia, cirurgia: @teste_anamnese.cirurgia, condicionamento: @teste_anamnese.condicionamento, dieta: @teste_anamnese.dieta, doenca: @teste_anamnese.doenca, emergencia: @teste_anamnese.emergencia, fumante: @teste_anamnese.fumante, lesao: @teste_anamnese.lesao, medicacao: @teste_anamnese.medicacao, meta: @teste_anamnese.meta, observacao: @teste_anamnese.observacao, peso: @teste_anamnese.peso, telefone: @teste_anamnese.telefone, tipo_sanguineo: @teste_anamnese.tipo_sanguineo }
    assert_redirected_to teste_anamnese_path(assigns(:teste_anamnese))
  end

  test "should destroy teste_anamnese" do
    assert_difference('TesteAnamnese.count', -1) do
      delete :destroy, id: @teste_anamnese
    end

    assert_redirected_to teste_anamneses_path
  end
end

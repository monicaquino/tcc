require 'test_helper'

class CalculoImcsControllerTest < ActionController::TestCase
  setup do
    @calculo_imc = calculo_imcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calculo_imcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calculo_imc" do
    assert_difference('CalculoImc.count') do
      post :create, calculo_imc: { altura: @calculo_imc.altura, aluno_id: @calculo_imc.aluno_id, peso: @calculo_imc.peso }
    end

    assert_redirected_to calculo_imc_path(assigns(:calculo_imc))
  end

  test "should show calculo_imc" do
    get :show, id: @calculo_imc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calculo_imc
    assert_response :success
  end

  test "should update calculo_imc" do
    patch :update, id: @calculo_imc, calculo_imc: { altura: @calculo_imc.altura, aluno_id: @calculo_imc.aluno_id, peso: @calculo_imc.peso }
    assert_redirected_to calculo_imc_path(assigns(:calculo_imc))
  end

  test "should destroy calculo_imc" do
    assert_difference('CalculoImc.count', -1) do
      delete :destroy, id: @calculo_imc
    end

    assert_redirected_to calculo_imcs_path
  end
end

require 'test_helper'

class PercentualGordurasControllerTest < ActionController::TestCase
  setup do
    @percentual_gordura = percentual_gorduras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:percentual_gorduras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create percentual_gordura" do
    assert_difference('PercentualGordura.count') do
      post :create, percentual_gordura: { abdomen: @percentual_gordura.abdomen, aluno_id: @percentual_gordura.aluno_id, coxa: @percentual_gordura.coxa, subescapular: @percentual_gordura.subescapular, supra_f: @percentual_gordura.supra_f, supra_m: @percentual_gordura.supra_m, triceps: @percentual_gordura.triceps }
    end

    assert_redirected_to percentual_gordura_path(assigns(:percentual_gordura))
  end

  test "should show percentual_gordura" do
    get :show, id: @percentual_gordura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @percentual_gordura
    assert_response :success
  end

  test "should update percentual_gordura" do
    patch :update, id: @percentual_gordura, percentual_gordura: { abdomen: @percentual_gordura.abdomen, aluno_id: @percentual_gordura.aluno_id, coxa: @percentual_gordura.coxa, subescapular: @percentual_gordura.subescapular, supra_f: @percentual_gordura.supra_f, supra_m: @percentual_gordura.supra_m, triceps: @percentual_gordura.triceps }
    assert_redirected_to percentual_gordura_path(assigns(:percentual_gordura))
  end

  test "should destroy percentual_gordura" do
    assert_difference('PercentualGordura.count', -1) do
      delete :destroy, id: @percentual_gordura
    end

    assert_redirected_to percentual_gorduras_path
  end
end

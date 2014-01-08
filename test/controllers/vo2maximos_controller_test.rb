require 'test_helper'

class Vo2maximosControllerTest < ActionController::TestCase
  setup do
    @vo2maximo = vo2maximos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vo2maximos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vo2maximo" do
    assert_difference('Vo2maximo.count') do
      post :create, vo2maximo: { aluno_id: @vo2maximo.aluno_id, distancia: @vo2maximo.distancia }
    end

    assert_redirected_to vo2maximo_path(assigns(:vo2maximo))
  end

  test "should show vo2maximo" do
    get :show, id: @vo2maximo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vo2maximo
    assert_response :success
  end

  test "should update vo2maximo" do
    patch :update, id: @vo2maximo, vo2maximo: { aluno_id: @vo2maximo.aluno_id, distancia: @vo2maximo.distancia }
    assert_redirected_to vo2maximo_path(assigns(:vo2maximo))
  end

  test "should destroy vo2maximo" do
    assert_difference('Vo2maximo.count', -1) do
      delete :destroy, id: @vo2maximo
    end

    assert_redirected_to vo2maximos_path
  end
end

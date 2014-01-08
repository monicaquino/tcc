require 'test_helper'

class CinturaQuadrilsControllerTest < ActionController::TestCase
  setup do
    @cintura_quadril = cintura_quadrils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cintura_quadrils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cintura_quadril" do
    assert_difference('CinturaQuadril.count') do
      post :create, cintura_quadril: { aluno_id: @cintura_quadril.aluno_id, cintura: @cintura_quadril.cintura, quadril: @cintura_quadril.quadril }
    end

    assert_redirected_to cintura_quadril_path(assigns(:cintura_quadril))
  end

  test "should show cintura_quadril" do
    get :show, id: @cintura_quadril
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cintura_quadril
    assert_response :success
  end

  test "should update cintura_quadril" do
    patch :update, id: @cintura_quadril, cintura_quadril: { aluno_id: @cintura_quadril.aluno_id, cintura: @cintura_quadril.cintura, quadril: @cintura_quadril.quadril }
    assert_redirected_to cintura_quadril_path(assigns(:cintura_quadril))
  end

  test "should destroy cintura_quadril" do
    assert_difference('CinturaQuadril.count', -1) do
      delete :destroy, id: @cintura_quadril
    end

    assert_redirected_to cintura_quadrils_path
  end
end

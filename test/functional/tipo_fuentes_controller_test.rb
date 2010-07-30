require 'test_helper'

class TipoFuentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_fuentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_fuente" do
    assert_difference('TipoFuente.count') do
      post :create, :tipo_fuente => { }
    end

    assert_redirected_to tipo_fuente_path(assigns(:tipo_fuente))
  end

  test "should show tipo_fuente" do
    get :show, :id => tipo_fuentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_fuentes(:one).to_param
    assert_response :success
  end

  test "should update tipo_fuente" do
    put :update, :id => tipo_fuentes(:one).to_param, :tipo_fuente => { }
    assert_redirected_to tipo_fuente_path(assigns(:tipo_fuente))
  end

  test "should destroy tipo_fuente" do
    assert_difference('TipoFuente.count', -1) do
      delete :destroy, :id => tipo_fuentes(:one).to_param
    end

    assert_redirected_to tipo_fuentes_path
  end
end

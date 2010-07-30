require 'test_helper'

class FuentesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuente" do
    assert_difference('Fuente.count') do
      post :create, :fuente => { }
    end

    assert_redirected_to fuente_path(assigns(:fuente))
  end

  test "should show fuente" do
    get :show, :id => fuentes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fuentes(:one).to_param
    assert_response :success
  end

  test "should update fuente" do
    put :update, :id => fuentes(:one).to_param, :fuente => { }
    assert_redirected_to fuente_path(assigns(:fuente))
  end

  test "should destroy fuente" do
    assert_difference('Fuente.count', -1) do
      delete :destroy, :id => fuentes(:one).to_param
    end

    assert_redirected_to fuentes_path
  end
end

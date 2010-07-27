require 'test_helper'

class PiaOcotalsProyectosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pia_ocotals_proyectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pia_ocotals_proyecto" do
    assert_difference('PiaOcotalsProyecto.count') do
      post :create, :pia_ocotals_proyecto => { }
    end

    assert_redirected_to pia_ocotals_proyecto_path(assigns(:pia_ocotals_proyecto))
  end

  test "should show pia_ocotals_proyecto" do
    get :show, :id => pia_ocotals_proyectos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pia_ocotals_proyectos(:one).to_param
    assert_response :success
  end

  test "should update pia_ocotals_proyecto" do
    put :update, :id => pia_ocotals_proyectos(:one).to_param, :pia_ocotals_proyecto => { }
    assert_redirected_to pia_ocotals_proyecto_path(assigns(:pia_ocotals_proyecto))
  end

  test "should destroy pia_ocotals_proyecto" do
    assert_difference('PiaOcotalsProyecto.count', -1) do
      delete :destroy, :id => pia_ocotals_proyectos(:one).to_param
    end

    assert_redirected_to pia_ocotals_proyectos_path
  end
end

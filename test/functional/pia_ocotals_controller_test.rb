require 'test_helper'

class PiaOcotalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pia_ocotals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pia_ocotal" do
    assert_difference('PiaOcotal.count') do
      post :create, :pia_ocotal => { }
    end

    assert_redirected_to pia_ocotal_path(assigns(:pia_ocotal))
  end

  test "should show pia_ocotal" do
    get :show, :id => pia_ocotals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pia_ocotals(:one).to_param
    assert_response :success
  end

  test "should update pia_ocotal" do
    put :update, :id => pia_ocotals(:one).to_param, :pia_ocotal => { }
    assert_redirected_to pia_ocotal_path(assigns(:pia_ocotal))
  end

  test "should destroy pia_ocotal" do
    assert_difference('PiaOcotal.count', -1) do
      delete :destroy, :id => pia_ocotals(:one).to_param
    end

    assert_redirected_to pia_ocotals_path
  end
end

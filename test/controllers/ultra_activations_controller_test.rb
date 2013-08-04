require 'test_helper'

class UltraActivationsControllerTest < ActionController::TestCase
  setup do
    @ultra_activation = ultra_activations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultra_activations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultra_activation" do
    assert_difference('UltraActivation.count') do
      post :create, ultra_activation: { admin_id: @ultra_activation.admin_id, email: @ultra_activation.email, fiftynine_plan: @ultra_activation.fiftynine_plan, first_name: @ultra_activation.first_name, fortynine_plan: @ultra_activation.fortynine_plan, last_name: @ultra_activation.last_name, ninteen_plan: @ultra_activation.ninteen_plan, sim_number: @ultra_activation.sim_number, tirtynine_plan: @ultra_activation.tirtynine_plan, twentynine_plan: @ultra_activation.twentynine_plan, wallet_id: @ultra_activation.wallet_id, zip_code: @ultra_activation.zip_code }
    end

    assert_redirected_to ultra_activation_path(assigns(:ultra_activation))
  end

  test "should show ultra_activation" do
    get :show, id: @ultra_activation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ultra_activation
    assert_response :success
  end

  test "should update ultra_activation" do
    patch :update, id: @ultra_activation, ultra_activation: { admin_id: @ultra_activation.admin_id, email: @ultra_activation.email, fiftynine_plan: @ultra_activation.fiftynine_plan, first_name: @ultra_activation.first_name, fortynine_plan: @ultra_activation.fortynine_plan, last_name: @ultra_activation.last_name, ninteen_plan: @ultra_activation.ninteen_plan, sim_number: @ultra_activation.sim_number, tirtynine_plan: @ultra_activation.tirtynine_plan, twentynine_plan: @ultra_activation.twentynine_plan, wallet_id: @ultra_activation.wallet_id, zip_code: @ultra_activation.zip_code }
    assert_redirected_to ultra_activation_path(assigns(:ultra_activation))
  end

  test "should destroy ultra_activation" do
    assert_difference('UltraActivation.count', -1) do
      delete :destroy, id: @ultra_activation
    end

    assert_redirected_to ultra_activations_path
  end
end

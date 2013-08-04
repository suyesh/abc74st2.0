require 'test_helper'

class PtelActivationsControllerTest < ActionController::TestCase
  setup do
    @ptel_activation = ptel_activations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptel_activations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptel_activation" do
    assert_difference('PtelActivation.count') do
      post :create, ptel_activation: { admin_id: @ptel_activation.admin_id, contact_number: @ptel_activation.contact_number, email: @ptel_activation.email, fifty_plan: @ptel_activation.fifty_plan, first_name: @ptel_activation.first_name, fourty_plan: @ptel_activation.fourty_plan, last_name: @ptel_activation.last_name, paygo_amount: @ptel_activation.paygo_amount, real_paygo: @ptel_activation.real_paygo, sim_number: @ptel_activation.sim_number, wallet_id: @ptel_activation.wallet_id, zip_code: @ptel_activation.zip_code }
    end

    assert_redirected_to ptel_activation_path(assigns(:ptel_activation))
  end

  test "should show ptel_activation" do
    get :show, id: @ptel_activation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptel_activation
    assert_response :success
  end

  test "should update ptel_activation" do
    patch :update, id: @ptel_activation, ptel_activation: { admin_id: @ptel_activation.admin_id, contact_number: @ptel_activation.contact_number, email: @ptel_activation.email, fifty_plan: @ptel_activation.fifty_plan, first_name: @ptel_activation.first_name, fourty_plan: @ptel_activation.fourty_plan, last_name: @ptel_activation.last_name, paygo_amount: @ptel_activation.paygo_amount, real_paygo: @ptel_activation.real_paygo, sim_number: @ptel_activation.sim_number, wallet_id: @ptel_activation.wallet_id, zip_code: @ptel_activation.zip_code }
    assert_redirected_to ptel_activation_path(assigns(:ptel_activation))
  end

  test "should destroy ptel_activation" do
    assert_difference('PtelActivation.count', -1) do
      delete :destroy, id: @ptel_activation
    end

    assert_redirected_to ptel_activations_path
  end
end

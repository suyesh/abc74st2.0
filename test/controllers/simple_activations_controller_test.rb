require 'test_helper'

class SimpleActivationsControllerTest < ActionController::TestCase
  setup do
    @simple_activation = simple_activations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_activations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_activation" do
    assert_difference('SimpleActivation.count') do
      post :create, simple_activation: { admin_id: @simple_activation.admin_id, fifty_plan: @simple_activation.fifty_plan, fourty_plan: @simple_activation.fourty_plan, ild: @simple_activation.ild, sim_number: @simple_activation.sim_number, sixty_plan: @simple_activation.sixty_plan, twentyfive_plan: @simple_activation.twentyfive_plan, wallet_id: @simple_activation.wallet_id, zip_code: @simple_activation.zip_code }
    end

    assert_redirected_to simple_activation_path(assigns(:simple_activation))
  end

  test "should show simple_activation" do
    get :show, id: @simple_activation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_activation
    assert_response :success
  end

  test "should update simple_activation" do
    patch :update, id: @simple_activation, simple_activation: { admin_id: @simple_activation.admin_id, fifty_plan: @simple_activation.fifty_plan, fourty_plan: @simple_activation.fourty_plan, ild: @simple_activation.ild, sim_number: @simple_activation.sim_number, sixty_plan: @simple_activation.sixty_plan, twentyfive_plan: @simple_activation.twentyfive_plan, wallet_id: @simple_activation.wallet_id, zip_code: @simple_activation.zip_code }
    assert_redirected_to simple_activation_path(assigns(:simple_activation))
  end

  test "should destroy simple_activation" do
    assert_difference('SimpleActivation.count', -1) do
      delete :destroy, id: @simple_activation
    end

    assert_redirected_to simple_activations_path
  end
end

require 'test_helper'

class SimplePortinsControllerTest < ActionController::TestCase
  setup do
    @simple_portin = simple_portins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_portins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_portin" do
    assert_difference('SimplePortin.count') do
      post :create, simple_portin: { address: @simple_portin.address, admin_id: @simple_portin.admin_id, city: @simple_portin.city, current_service_provider: @simple_portin.current_service_provider, email: @simple_portin.email, existing_phone: @simple_portin.existing_phone, fifty_plan: @simple_portin.fifty_plan, first_name: @simple_portin.first_name, fourty_plan: @simple_portin.fourty_plan, last_name: @simple_portin.last_name, old_account_number: @simple_portin.old_account_number, old_account_password: @simple_portin.old_account_password, seventy_plan: @simple_portin.seventy_plan, sim_number: @simple_portin.sim_number, sixty_plan: @simple_portin.sixty_plan, state: @simple_portin.state, twentyfive_plan: @simple_portin.twentyfive_plan, wallet_id: @simple_portin.wallet_id, zip_code: @simple_portin.zip_code, zip_code: @simple_portin.zip_code }
    end

    assert_redirected_to simple_portin_path(assigns(:simple_portin))
  end

  test "should show simple_portin" do
    get :show, id: @simple_portin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_portin
    assert_response :success
  end

  test "should update simple_portin" do
    patch :update, id: @simple_portin, simple_portin: { address: @simple_portin.address, admin_id: @simple_portin.admin_id, city: @simple_portin.city, current_service_provider: @simple_portin.current_service_provider, email: @simple_portin.email, existing_phone: @simple_portin.existing_phone, fifty_plan: @simple_portin.fifty_plan, first_name: @simple_portin.first_name, fourty_plan: @simple_portin.fourty_plan, last_name: @simple_portin.last_name, old_account_number: @simple_portin.old_account_number, old_account_password: @simple_portin.old_account_password, seventy_plan: @simple_portin.seventy_plan, sim_number: @simple_portin.sim_number, sixty_plan: @simple_portin.sixty_plan, state: @simple_portin.state, twentyfive_plan: @simple_portin.twentyfive_plan, wallet_id: @simple_portin.wallet_id, zip_code: @simple_portin.zip_code, zip_code: @simple_portin.zip_code }
    assert_redirected_to simple_portin_path(assigns(:simple_portin))
  end

  test "should destroy simple_portin" do
    assert_difference('SimplePortin.count', -1) do
      delete :destroy, id: @simple_portin
    end

    assert_redirected_to simple_portins_path
  end
end

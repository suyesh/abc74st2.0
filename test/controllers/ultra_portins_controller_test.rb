require 'test_helper'

class UltraPortinsControllerTest < ActionController::TestCase
  setup do
    @ultra_portin = ultra_portins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultra_portins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultra_portin" do
    assert_difference('UltraPortin.count') do
      post :create, ultra_portin: { account_no: @ultra_portin.account_no, admin_id: @ultra_portin.admin_id, email: @ultra_portin.email, fiftynine_plan: @ultra_portin.fiftynine_plan, first_name: @ultra_portin.first_name, fortynine_plan: @ultra_portin.fortynine_plan, last_name: @ultra_portin.last_name, ninteen_plan: @ultra_portin.ninteen_plan, old_number: @ultra_portin.old_number, old_password: @ultra_portin.old_password, sim_number: @ultra_portin.sim_number, tirtynine_plan: @ultra_portin.tirtynine_plan, twentynine_plan: @ultra_portin.twentynine_plan, wallet_id: @ultra_portin.wallet_id, zip_code: @ultra_portin.zip_code, zip_code: @ultra_portin.zip_code }
    end

    assert_redirected_to ultra_portin_path(assigns(:ultra_portin))
  end

  test "should show ultra_portin" do
    get :show, id: @ultra_portin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ultra_portin
    assert_response :success
  end

  test "should update ultra_portin" do
    patch :update, id: @ultra_portin, ultra_portin: { account_no: @ultra_portin.account_no, admin_id: @ultra_portin.admin_id, email: @ultra_portin.email, fiftynine_plan: @ultra_portin.fiftynine_plan, first_name: @ultra_portin.first_name, fortynine_plan: @ultra_portin.fortynine_plan, last_name: @ultra_portin.last_name, ninteen_plan: @ultra_portin.ninteen_plan, old_number: @ultra_portin.old_number, old_password: @ultra_portin.old_password, sim_number: @ultra_portin.sim_number, tirtynine_plan: @ultra_portin.tirtynine_plan, twentynine_plan: @ultra_portin.twentynine_plan, wallet_id: @ultra_portin.wallet_id, zip_code: @ultra_portin.zip_code, zip_code: @ultra_portin.zip_code }
    assert_redirected_to ultra_portin_path(assigns(:ultra_portin))
  end

  test "should destroy ultra_portin" do
    assert_difference('UltraPortin.count', -1) do
      delete :destroy, id: @ultra_portin
    end

    assert_redirected_to ultra_portins_path
  end
end

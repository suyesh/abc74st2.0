require 'test_helper'

class PtelPortinsControllerTest < ActionController::TestCase
  setup do
    @ptel_portin = ptel_portins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptel_portins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptel_portin" do
    assert_difference('PtelPortin.count') do
      post :create, ptel_portin: { address: @ptel_portin.address, admin_id: @ptel_portin.admin_id, city: @ptel_portin.city, comments: @ptel_portin.comments, contact_number: @ptel_portin.contact_number, email: @ptel_portin.email, existing_number: @ptel_portin.existing_number, fiftyplan: @ptel_portin.fiftyplan, first_name: @ptel_portin.first_name, fourtyplan: @ptel_portin.fourtyplan, last_name: @ptel_portin.last_name, old_account_id: @ptel_portin.old_account_id, old_account_password: @ptel_portin.old_account_password, old_service_provider: @ptel_portin.old_service_provider, paygo_amount: @ptel_portin.paygo_amount, real_paygo: @ptel_portin.real_paygo, state: @ptel_portin.state, wallet_id: @ptel_portin.wallet_id, zip_code: @ptel_portin.zip_code }
    end

    assert_redirected_to ptel_portin_path(assigns(:ptel_portin))
  end

  test "should show ptel_portin" do
    get :show, id: @ptel_portin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptel_portin
    assert_response :success
  end

  test "should update ptel_portin" do
    patch :update, id: @ptel_portin, ptel_portin: { address: @ptel_portin.address, admin_id: @ptel_portin.admin_id, city: @ptel_portin.city, comments: @ptel_portin.comments, contact_number: @ptel_portin.contact_number, email: @ptel_portin.email, existing_number: @ptel_portin.existing_number, fiftyplan: @ptel_portin.fiftyplan, first_name: @ptel_portin.first_name, fourtyplan: @ptel_portin.fourtyplan, last_name: @ptel_portin.last_name, old_account_id: @ptel_portin.old_account_id, old_account_password: @ptel_portin.old_account_password, old_service_provider: @ptel_portin.old_service_provider, paygo_amount: @ptel_portin.paygo_amount, real_paygo: @ptel_portin.real_paygo, state: @ptel_portin.state, wallet_id: @ptel_portin.wallet_id, zip_code: @ptel_portin.zip_code }
    assert_redirected_to ptel_portin_path(assigns(:ptel_portin))
  end

  test "should destroy ptel_portin" do
    assert_difference('PtelPortin.count', -1) do
      delete :destroy, id: @ptel_portin
    end

    assert_redirected_to ptel_portins_path
  end
end

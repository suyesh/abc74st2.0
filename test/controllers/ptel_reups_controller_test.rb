require 'test_helper'

class PtelReupsControllerTest < ActionController::TestCase
  setup do
    @ptel_reup = ptel_reups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptel_reups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptel_reup" do
    assert_difference('PtelReup.count') do
      post :create, ptel_reup: { admin_id: @ptel_reup.admin_id, fifty_plan: @ptel_reup.fifty_plan, fourty_plan: @ptel_reup.fourty_plan, paygo_amount: @ptel_reup.paygo_amount, pone_number: @ptel_reup.pone_number, real_paygo: @ptel_reup.real_paygo, wallet_id: @ptel_reup.wallet_id }
    end

    assert_redirected_to ptel_reup_path(assigns(:ptel_reup))
  end

  test "should show ptel_reup" do
    get :show, id: @ptel_reup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ptel_reup
    assert_response :success
  end

  test "should update ptel_reup" do
    patch :update, id: @ptel_reup, ptel_reup: { admin_id: @ptel_reup.admin_id, fifty_plan: @ptel_reup.fifty_plan, fourty_plan: @ptel_reup.fourty_plan, paygo_amount: @ptel_reup.paygo_amount, pone_number: @ptel_reup.pone_number, real_paygo: @ptel_reup.real_paygo, wallet_id: @ptel_reup.wallet_id }
    assert_redirected_to ptel_reup_path(assigns(:ptel_reup))
  end

  test "should destroy ptel_reup" do
    assert_difference('PtelReup.count', -1) do
      delete :destroy, id: @ptel_reup
    end

    assert_redirected_to ptel_reups_path
  end
end

require 'test_helper'

class WalletsControllerTest < ActionController::TestCase
  setup do
    @wallet = wallets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wallets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wallet" do
    assert_difference('Wallet.count') do
      post :create, wallet: { admin_id: @wallet.admin_id, balance: @wallet.balance, h20_activation_id: @wallet.h20_activation_id, h20_portin_id: @wallet.h20_portin_id, h20_reup_id: @wallet.h20_reup_id, income_from_activations: @wallet.income_from_activations, income_from_international_recharge: @wallet.income_from_international_recharge, income_from_reup: @wallet.income_from_reup, lyca_activation_id: @wallet.lyca_activation_id, lyca_portin_id: @wallet.lyca_portin_id, lyca_reup_id: @wallet.lyca_reup_id, ptel_activation_id: @wallet.ptel_activation_id, ptel_portin_id: @wallet.ptel_portin_id, ptel_reup_id: @wallet.ptel_reup_id, refunds: @wallet.refunds, simple_activation_id: @wallet.simple_activation_id, simple_portin_id: @wallet.simple_portin_id, simple_reup_id: @wallet.simple_reup_id, tmobile_activation_id: @wallet.tmobile_activation_id, tmobile_portin_id: @wallet.tmobile_portin_id, tmobile_reup_id: @wallet.tmobile_reup_id, ultra_activation_id: @wallet.ultra_activation_id, ultra_portin_id: @wallet.ultra_portin_id, ultra_reup_id: @wallet.ultra_reup_id, unlocking: @wallet.unlocking, unlocking_id: @wallet.unlocking_id }
    end

    assert_redirected_to wallet_path(assigns(:wallet))
  end

  test "should show wallet" do
    get :show, id: @wallet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wallet
    assert_response :success
  end

  test "should update wallet" do
    patch :update, id: @wallet, wallet: { admin_id: @wallet.admin_id, balance: @wallet.balance, h20_activation_id: @wallet.h20_activation_id, h20_portin_id: @wallet.h20_portin_id, h20_reup_id: @wallet.h20_reup_id, income_from_activations: @wallet.income_from_activations, income_from_international_recharge: @wallet.income_from_international_recharge, income_from_reup: @wallet.income_from_reup, lyca_activation_id: @wallet.lyca_activation_id, lyca_portin_id: @wallet.lyca_portin_id, lyca_reup_id: @wallet.lyca_reup_id, ptel_activation_id: @wallet.ptel_activation_id, ptel_portin_id: @wallet.ptel_portin_id, ptel_reup_id: @wallet.ptel_reup_id, refunds: @wallet.refunds, simple_activation_id: @wallet.simple_activation_id, simple_portin_id: @wallet.simple_portin_id, simple_reup_id: @wallet.simple_reup_id, tmobile_activation_id: @wallet.tmobile_activation_id, tmobile_portin_id: @wallet.tmobile_portin_id, tmobile_reup_id: @wallet.tmobile_reup_id, ultra_activation_id: @wallet.ultra_activation_id, ultra_portin_id: @wallet.ultra_portin_id, ultra_reup_id: @wallet.ultra_reup_id, unlocking: @wallet.unlocking, unlocking_id: @wallet.unlocking_id }
    assert_redirected_to wallet_path(assigns(:wallet))
  end

  test "should destroy wallet" do
    assert_difference('Wallet.count', -1) do
      delete :destroy, id: @wallet
    end

    assert_redirected_to wallets_path
  end
end

require 'test_helper'

class UltraReupsControllerTest < ActionController::TestCase
  setup do
    @ultra_reup = ultra_reups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ultra_reups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ultra_reup" do
    assert_difference('UltraReup.count') do
      post :create, ultra_reup: { admin_id: @ultra_reup.admin_id, amount: @ultra_reup.amount, fiftynine_plan: @ultra_reup.fiftynine_plan, fourtynine_plan: @ultra_reup.fourtynine_plan, nineteen_plan: @ultra_reup.nineteen_plan, other_amount: @ultra_reup.other_amount, phone_number: @ultra_reup.phone_number, thirtynine_plan: @ultra_reup.thirtynine_plan, twentynine_plan: @ultra_reup.twentynine_plan, wallet_id: @ultra_reup.wallet_id }
    end

    assert_redirected_to ultra_reup_path(assigns(:ultra_reup))
  end

  test "should show ultra_reup" do
    get :show, id: @ultra_reup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ultra_reup
    assert_response :success
  end

  test "should update ultra_reup" do
    patch :update, id: @ultra_reup, ultra_reup: { admin_id: @ultra_reup.admin_id, amount: @ultra_reup.amount, fiftynine_plan: @ultra_reup.fiftynine_plan, fourtynine_plan: @ultra_reup.fourtynine_plan, nineteen_plan: @ultra_reup.nineteen_plan, other_amount: @ultra_reup.other_amount, phone_number: @ultra_reup.phone_number, thirtynine_plan: @ultra_reup.thirtynine_plan, twentynine_plan: @ultra_reup.twentynine_plan, wallet_id: @ultra_reup.wallet_id }
    assert_redirected_to ultra_reup_path(assigns(:ultra_reup))
  end

  test "should destroy ultra_reup" do
    assert_difference('UltraReup.count', -1) do
      delete :destroy, id: @ultra_reup
    end

    assert_redirected_to ultra_reups_path
  end
end

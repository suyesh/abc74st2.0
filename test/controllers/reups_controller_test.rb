require 'test_helper'

class ReupsControllerTest < ActionController::TestCase
  setup do
    @reup = reups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reup" do
    assert_difference('Reup.count') do
      post :create, reup: { admin_id: @reup.admin_id, change_plan: @reup.change_plan, fifty_plan: @reup.fifty_plan, fourty_plan: @reup.fourty_plan, phone_number: @reup.phone_number, seventy_plan: @reup.seventy_plan, sixty_plan: @reup.sixty_plan, twentyfive_plan: @reup.twentyfive_plan, wallet_id: @reup.wallet_id }
    end

    assert_redirected_to reup_path(assigns(:reup))
  end

  test "should show reup" do
    get :show, id: @reup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reup
    assert_response :success
  end

  test "should update reup" do
    patch :update, id: @reup, reup: { admin_id: @reup.admin_id, change_plan: @reup.change_plan, fifty_plan: @reup.fifty_plan, fourty_plan: @reup.fourty_plan, phone_number: @reup.phone_number, seventy_plan: @reup.seventy_plan, sixty_plan: @reup.sixty_plan, twentyfive_plan: @reup.twentyfive_plan, wallet_id: @reup.wallet_id }
    assert_redirected_to reup_path(assigns(:reup))
  end

  test "should destroy reup" do
    assert_difference('Reup.count', -1) do
      delete :destroy, id: @reup
    end

    assert_redirected_to reups_path
  end
end

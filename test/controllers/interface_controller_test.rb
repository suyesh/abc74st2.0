require 'test_helper'

class InterfaceControllerTest < ActionController::TestCase
  test "should get dasboard" do
    get :dasboard
    assert_response :success
  end

end

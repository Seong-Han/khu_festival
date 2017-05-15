require 'test_helper'

class PlaceControllerTest < ActionController::TestCase
  test "should get mul_front" do
    get :mul_front
    assert_response :success
  end

  test "should get parking_lot" do
    get :parking_lot
    assert_response :success
  end

  test "should get engineering_front" do
    get :engineering_front
    assert_response :success
  end

end

require 'test_helper'

class ClubControllerTest < ActionController::TestCase
  test "should get club_create" do
    get :club_create
    assert_response :success
  end

  test "should get club_destroy" do
    get :club_destroy
    assert_response :success
  end

  test "should get club_update" do
    get :club_update
    assert_response :success
  end

  test "should get club_edit" do
    get :club_edit
    assert_response :success
  end

  test "should get club_index" do
    get :club_index
    assert_response :success
  end

end

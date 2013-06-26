require 'test_helper'

class WizardControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get emails" do
    get :emails
    assert_response :success
  end

  test "should get bidding" do
    get :bidding
    assert_response :success
  end

  test "should get prime_contract" do
    get :prime_contract
    assert_response :success
  end

  test "should get commitments" do
    get :commitments
    assert_response :success
  end

  test "should get change_orders" do
    get :change_orders
    assert_response :success
  end

  test "should get rfis" do
    get :rfis
    assert_response :success
  end

  test "should get submittals" do
    get :submittals
    assert_response :success
  end

  test "should get transmittals" do
    get :transmittals
    assert_response :success
  end

  test "should get punch_list" do
    get :punch_list
    assert_response :success
  end

  test "should get meetings" do
    get :meetings
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get daily_log" do
    get :daily_log
    assert_response :success
  end

  test "should get reports" do
    get :reports
    assert_response :success
  end

  test "should get photos" do
    get :photos
    assert_response :success
  end

  test "should get drawings" do
    get :drawings
    assert_response :success
  end

  test "should get documents" do
    get :documents
    assert_response :success
  end

  test "should get directory" do
    get :directory
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end

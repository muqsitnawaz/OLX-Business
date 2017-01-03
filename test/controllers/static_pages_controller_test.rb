require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get buy" do
    get :buy
    assert_response :success
  end

  test "should get sell" do
    get :sell
    assert_response :success
  end

  test "should get buyers" do
    get :buyers
    assert_response :success
  end

  test "should get sellers" do
    get :sellers
    assert_response :success
  end

  test "should get investors" do
    get :investors
    assert_response :success
  end

  test "should get value" do
    get :value
    assert_response :success
  end

  test "should get legal" do
    get :legal
    assert_response :success
  end

  test "should get financing" do
    get :financing
    assert_response :success
  end

end

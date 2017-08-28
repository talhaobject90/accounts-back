# frozen_string_literal: true

require 'test_helper'

class DailiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily = dailies(:one)
  end

  test "should get index" do
    get dailies_url, as: :json
    assert_response :success
  end

  test "should create daily" do
    assert_difference('Daily.count') do
      post dailies_url, params: { daily: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show daily" do
    get daily_url(@daily), as: :json
    assert_response :success
  end

  test "should update daily" do
    patch daily_url(@daily), params: { daily: {  } }, as: :json
    assert_response 200
  end

  test "should destroy daily" do
    assert_difference('Daily.count', -1) do
      delete daily_url(@daily), as: :json
    end

    assert_response 204
  end
end

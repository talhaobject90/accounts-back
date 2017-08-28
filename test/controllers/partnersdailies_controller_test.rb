# frozen_string_literal: true

require 'test_helper'

class PartnersdailiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partnersdaily = partnersdailies(:one)
  end

  test "should get index" do
    get partnersdailies_url, as: :json
    assert_response :success
  end

  test "should create partnersdaily" do
    assert_difference('Partnersdaily.count') do
      post partnersdailies_url, params: { partnersdaily: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show partnersdaily" do
    get partnersdaily_url(@partnersdaily), as: :json
    assert_response :success
  end

  test "should update partnersdaily" do
    patch partnersdaily_url(@partnersdaily), params: { partnersdaily: {  } }, as: :json
    assert_response 200
  end

  test "should destroy partnersdaily" do
    assert_difference('Partnersdaily.count', -1) do
      delete partnersdaily_url(@partnersdaily), as: :json
    end

    assert_response 204
  end
end

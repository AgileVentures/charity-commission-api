require 'test_helper'

class CharityTrusteesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_trustee = charity_trustees(:one)
  end

  test "should get index" do
    get charity_trustees_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_trustee_url
    assert_response :success
  end

  test "should create charity_trustee" do
    assert_difference('CharityTrustee.count') do
      post charity_trustees_url, params: { charity_trustee: { regno: @charity_trustee.regno, trustee: @charity_trustee.trustee } }
    end

    assert_redirected_to charity_trustee_url(CharityTrustee.last)
  end

  test "should show charity_trustee" do
    get charity_trustee_url(@charity_trustee)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_trustee_url(@charity_trustee)
    assert_response :success
  end

  test "should update charity_trustee" do
    patch charity_trustee_url(@charity_trustee), params: { charity_trustee: { regno: @charity_trustee.regno, trustee: @charity_trustee.trustee } }
    assert_redirected_to charity_trustee_url(@charity_trustee)
  end

  test "should destroy charity_trustee" do
    assert_difference('CharityTrustee.count', -1) do
      delete charity_trustee_url(@charity_trustee)
    end

    assert_redirected_to charity_trustees_url
  end
end

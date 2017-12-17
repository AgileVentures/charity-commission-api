require 'test_helper'

class CharityAoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_aoo = charity_aoos(:one)
  end

  test "should get index" do
    get charity_aoos_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_aoo_url
    assert_response :success
  end

  test "should create charity_aoo" do
    assert_difference('CharityAoo.count') do
      post charity_aoos_url, params: { charity_aoo: { aookey: @charity_aoo.aookey, aootype: @charity_aoo.aootype, master: @charity_aoo.master, regno: @charity_aoo.regno, welsh: @charity_aoo.welsh } }
    end

    assert_redirected_to charity_aoo_url(CharityAoo.last)
  end

  test "should show charity_aoo" do
    get charity_aoo_url(@charity_aoo)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_aoo_url(@charity_aoo)
    assert_response :success
  end

  test "should update charity_aoo" do
    patch charity_aoo_url(@charity_aoo), params: { charity_aoo: { aookey: @charity_aoo.aookey, aootype: @charity_aoo.aootype, master: @charity_aoo.master, regno: @charity_aoo.regno, welsh: @charity_aoo.welsh } }
    assert_redirected_to charity_aoo_url(@charity_aoo)
  end

  test "should destroy charity_aoo" do
    assert_difference('CharityAoo.count', -1) do
      delete charity_aoo_url(@charity_aoo)
    end

    assert_redirected_to charity_aoos_url
  end
end

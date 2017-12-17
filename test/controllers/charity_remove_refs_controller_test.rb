require 'test_helper'

class CharityRemoveRefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_remove_ref = charity_remove_refs(:one)
  end

  test "should get index" do
    get charity_remove_refs_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_remove_ref_url
    assert_response :success
  end

  test "should create charity_remove_ref" do
    assert_difference('CharityRemoveRef.count') do
      post charity_remove_refs_url, params: { charity_remove_ref: { code: @charity_remove_ref.code, text: @charity_remove_ref.text } }
    end

    assert_redirected_to charity_remove_ref_url(CharityRemoveRef.last)
  end

  test "should show charity_remove_ref" do
    get charity_remove_ref_url(@charity_remove_ref)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_remove_ref_url(@charity_remove_ref)
    assert_response :success
  end

  test "should update charity_remove_ref" do
    patch charity_remove_ref_url(@charity_remove_ref), params: { charity_remove_ref: { code: @charity_remove_ref.code, text: @charity_remove_ref.text } }
    assert_redirected_to charity_remove_ref_url(@charity_remove_ref)
  end

  test "should destroy charity_remove_ref" do
    assert_difference('CharityRemoveRef.count', -1) do
      delete charity_remove_ref_url(@charity_remove_ref)
    end

    assert_redirected_to charity_remove_refs_url
  end
end

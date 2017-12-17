require 'test_helper'

class AooRefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aoo_ref = aoo_refs(:one)
  end

  test "should get index" do
    get aoo_refs_url
    assert_response :success
  end

  test "should get new" do
    get new_aoo_ref_url
    assert_response :success
  end

  test "should create aoo_ref" do
    assert_difference('AooRef.count') do
      post aoo_refs_url, params: { aoo_ref: { aookey: @aoo_ref.aookey, aooname: @aoo_ref.aooname, aoosort: @aoo_ref.aoosort, aootype: @aoo_ref.aootype, code: @aoo_ref.code, master: @aoo_ref.master, welsh: @aoo_ref.welsh } }
    end

    assert_redirected_to aoo_ref_url(AooRef.last)
  end

  test "should show aoo_ref" do
    get aoo_ref_url(@aoo_ref)
    assert_response :success
  end

  test "should get edit" do
    get edit_aoo_ref_url(@aoo_ref)
    assert_response :success
  end

  test "should update aoo_ref" do
    patch aoo_ref_url(@aoo_ref), params: { aoo_ref: { aookey: @aoo_ref.aookey, aooname: @aoo_ref.aooname, aoosort: @aoo_ref.aoosort, aootype: @aoo_ref.aootype, code: @aoo_ref.code, master: @aoo_ref.master, welsh: @aoo_ref.welsh } }
    assert_redirected_to aoo_ref_url(@aoo_ref)
  end

  test "should destroy aoo_ref" do
    assert_difference('AooRef.count', -1) do
      delete aoo_ref_url(@aoo_ref)
    end

    assert_redirected_to aoo_refs_url
  end
end

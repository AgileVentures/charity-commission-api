require 'test_helper'

class CharityClassRefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_class_ref = charity_class_refs(:one)
  end

  test "should get index" do
    get charity_class_refs_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_class_ref_url
    assert_response :success
  end

  test "should create charity_class_ref" do
    assert_difference('CharityClassRef.count') do
      post charity_class_refs_url, params: { charity_class_ref: { classno: @charity_class_ref.classno, classtext: @charity_class_ref.classtext } }
    end

    assert_redirected_to charity_class_ref_url(CharityClassRef.last)
  end

  test "should show charity_class_ref" do
    get charity_class_ref_url(@charity_class_ref)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_class_ref_url(@charity_class_ref)
    assert_response :success
  end

  test "should update charity_class_ref" do
    patch charity_class_ref_url(@charity_class_ref), params: { charity_class_ref: { classno: @charity_class_ref.classno, classtext: @charity_class_ref.classtext } }
    assert_redirected_to charity_class_ref_url(@charity_class_ref)
  end

  test "should destroy charity_class_ref" do
    assert_difference('CharityClassRef.count', -1) do
      delete charity_class_ref_url(@charity_class_ref)
    end

    assert_redirected_to charity_class_refs_url
  end
end

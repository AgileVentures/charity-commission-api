require 'test_helper'

class CharityObjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_object = charity_objects(:one)
  end

  test "should get index" do
    get charity_objects_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_object_url
    assert_response :success
  end

  test "should create charity_object" do
    assert_difference('CharityObject.count') do
      post charity_objects_url, params: { charity_object: { object: @charity_object.object, regno: @charity_object.regno, seqno: @charity_object.seqno, subno: @charity_object.subno } }
    end

    assert_redirected_to charity_object_url(CharityObject.last)
  end

  test "should show charity_object" do
    get charity_object_url(@charity_object)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_object_url(@charity_object)
    assert_response :success
  end

  test "should update charity_object" do
    patch charity_object_url(@charity_object), params: { charity_object: { object: @charity_object.object, regno: @charity_object.regno, seqno: @charity_object.seqno, subno: @charity_object.subno } }
    assert_redirected_to charity_object_url(@charity_object)
  end

  test "should destroy charity_object" do
    assert_difference('CharityObject.count', -1) do
      delete charity_object_url(@charity_object)
    end

    assert_redirected_to charity_objects_url
  end
end

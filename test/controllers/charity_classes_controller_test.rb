require 'test_helper'

class CharityClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_class = charity_classes(:one)
  end

  test "should get index" do
    get charity_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_class_url
    assert_response :success
  end

  test "should create charity_class" do
    assert_difference('CharityClass.count') do
      post charity_classes_url, params: { charity_class: { charity_class: @charity_class.charity_class, regno: @charity_class.regno } }
    end

    assert_redirected_to charity_class_url(CharityClass.last)
  end

  test "should show charity_class" do
    get charity_class_url(@charity_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_class_url(@charity_class)
    assert_response :success
  end

  test "should update charity_class" do
    patch charity_class_url(@charity_class), params: { charity_class: { charity_class: @charity_class.charity_class, regno: @charity_class.regno } }
    assert_redirected_to charity_class_url(@charity_class)
  end

  test "should destroy charity_class" do
    assert_difference('CharityClass.count', -1) do
      delete charity_class_url(@charity_class)
    end

    assert_redirected_to charity_classes_url
  end
end

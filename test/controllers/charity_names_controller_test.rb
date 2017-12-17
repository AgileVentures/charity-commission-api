require 'test_helper'

class CharityNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_name = charity_names(:one)
  end

  test "should get index" do
    get charity_names_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_name_url
    assert_response :success
  end

  test "should create charity_name" do
    assert_difference('CharityName.count') do
      post charity_names_url, params: { charity_name: { name: @charity_name.name, nameno: @charity_name.nameno, regno: @charity_name.regno, subno: @charity_name.subno } }
    end

    assert_redirected_to charity_name_url(CharityName.last)
  end

  test "should show charity_name" do
    get charity_name_url(@charity_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_name_url(@charity_name)
    assert_response :success
  end

  test "should update charity_name" do
    patch charity_name_url(@charity_name), params: { charity_name: { name: @charity_name.name, nameno: @charity_name.nameno, regno: @charity_name.regno, subno: @charity_name.subno } }
    assert_redirected_to charity_name_url(@charity_name)
  end

  test "should destroy charity_name" do
    assert_difference('CharityName.count', -1) do
      delete charity_name_url(@charity_name)
    end

    assert_redirected_to charity_names_url
  end
end

require 'test_helper'

class MainCharitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_charity = main_charities(:one)
  end

  test "should get index" do
    get main_charities_url
    assert_response :success
  end

  test "should get new" do
    get new_main_charity_url
    assert_response :success
  end

  test "should create main_charity" do
    assert_difference('MainCharity.count') do
      post main_charities_url, params: { main_charity: { coyno: @main_charity.coyno, email: @main_charity.email, fyend: @main_charity.fyend, grouptype: @main_charity.grouptype, income: @main_charity.income, incomedate: @main_charity.incomedate, regno: @main_charity.regno, trustees: @main_charity.trustees, web: @main_charity.web, welsh: @main_charity.welsh } }
    end

    assert_redirected_to main_charity_url(MainCharity.last)
  end

  test "should show main_charity" do
    get main_charity_url(@main_charity)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_charity_url(@main_charity)
    assert_response :success
  end

  test "should update main_charity" do
    patch main_charity_url(@main_charity), params: { main_charity: { coyno: @main_charity.coyno, email: @main_charity.email, fyend: @main_charity.fyend, grouptype: @main_charity.grouptype, income: @main_charity.income, incomedate: @main_charity.incomedate, regno: @main_charity.regno, trustees: @main_charity.trustees, web: @main_charity.web, welsh: @main_charity.welsh } }
    assert_redirected_to main_charity_url(@main_charity)
  end

  test "should destroy main_charity" do
    assert_difference('MainCharity.count', -1) do
      delete main_charity_url(@main_charity)
    end

    assert_redirected_to main_charities_url
  end
end

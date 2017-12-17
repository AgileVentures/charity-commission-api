require 'test_helper'

class AcctSubmitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acct_submit = acct_submits(:one)
  end

  test "should get index" do
    get acct_submits_url
    assert_response :success
  end

  test "should get new" do
    get new_acct_submit_url
    assert_response :success
  end

  test "should create acct_submit" do
    assert_difference('AcctSubmit.count') do
      post acct_submits_url, params: { acct_submit: { arno: @acct_submit.arno, fyend: @acct_submit.fyend, regno: @acct_submit.regno, submit_date: @acct_submit.submit_date } }
    end

    assert_redirected_to acct_submit_url(AcctSubmit.last)
  end

  test "should show acct_submit" do
    get acct_submit_url(@acct_submit)
    assert_response :success
  end

  test "should get edit" do
    get edit_acct_submit_url(@acct_submit)
    assert_response :success
  end

  test "should update acct_submit" do
    patch acct_submit_url(@acct_submit), params: { acct_submit: { arno: @acct_submit.arno, fyend: @acct_submit.fyend, regno: @acct_submit.regno, submit_date: @acct_submit.submit_date } }
    assert_redirected_to acct_submit_url(@acct_submit)
  end

  test "should destroy acct_submit" do
    assert_difference('AcctSubmit.count', -1) do
      delete acct_submit_url(@acct_submit)
    end

    assert_redirected_to acct_submits_url
  end
end

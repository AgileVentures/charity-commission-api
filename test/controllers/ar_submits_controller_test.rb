require 'test_helper'

class ArSubmitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ar_submit = ar_submits(:one)
  end

  test "should get index" do
    get ar_submits_url
    assert_response :success
  end

  test "should get new" do
    get new_ar_submit_url
    assert_response :success
  end

  test "should create ar_submit" do
    assert_difference('ArSubmit.count') do
      post ar_submits_url, params: { ar_submit: { arno: @ar_submit.arno, regno: @ar_submit.regno, submit_date: @ar_submit.submit_date } }
    end

    assert_redirected_to ar_submit_url(ArSubmit.last)
  end

  test "should show ar_submit" do
    get ar_submit_url(@ar_submit)
    assert_response :success
  end

  test "should get edit" do
    get edit_ar_submit_url(@ar_submit)
    assert_response :success
  end

  test "should update ar_submit" do
    patch ar_submit_url(@ar_submit), params: { ar_submit: { arno: @ar_submit.arno, regno: @ar_submit.regno, submit_date: @ar_submit.submit_date } }
    assert_redirected_to ar_submit_url(@ar_submit)
  end

  test "should destroy ar_submit" do
    assert_difference('ArSubmit.count', -1) do
      delete ar_submit_url(@ar_submit)
    end

    assert_redirected_to ar_submits_url
  end
end

require 'test_helper'

class CharityPartbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity_partb = charity_partbs(:one)
  end

  test "should get index" do
    get charity_partbs_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_partb_url
    assert_response :success
  end

  test "should create charity_partb" do
    assert_difference('CharityPartb.count') do
      post charity_partbs_url, params: { charity_partb: { artype: @charity_partb.artype, asset_close: @charity_partb.asset_close, asset_gain: @charity_partb.asset_gain, asset_open: @charity_partb.asset_open, cash_assets: @charity_partb.cash_assets, charity_acc: @charity_partb.charity_acc, cons_acc: @charity_partb.cons_acc, credit_1: @charity_partb.credit_1, credit_long: @charity_partb.credit_long, current_assets: @charity_partb.current_assets, employees: @charity_partb.employees, exp_charble: @charity_partb.exp_charble, exp_dep: @charity_partb.exp_dep, exp_gov: @charity_partb.exp_gov, exp_grant: @charity_partb.exp_grant, exp_invest: @charity_partb.exp_invest, exp_other: @charity_partb.exp_other, exp_support: @charity_partb.exp_support, exp_total: @charity_partb.exp_total, exp_trade: @charity_partb.exp_trade, exp_vol: @charity_partb.exp_vol, fixed_assets: @charity_partb.fixed_assets, funds_end: @charity_partb.funds_end, funds_restrict: @charity_partb.funds_restrict, funds_total: @charity_partb.funds_total, funds_unrestrict: @charity_partb.funds_unrestrict, fyend: @charity_partb.fyend, fystart: @charity_partb.fystart, inc_char: @charity_partb.inc_char, inc_end: @charity_partb.inc_end, inc_fr: @charity_partb.inc_fr, inc_invest: @charity_partb.inc_invest, inc_leg: @charity_partb.inc_leg, inc_other: @charity_partb.inc_other, inc_total: @charity_partb.inc_total, inc_vol: @charity_partb.inc_vol, invest_assets: @charity_partb.invest_assets, invest_gain: @charity_partb.invest_gain, open_assets: @charity_partb.open_assets, pension_assets: @charity_partb.pension_assets, pension_gain: @charity_partb.pension_gain, regno: @charity_partb.regno, reserves: @charity_partb.reserves, total_assets: @charity_partb.total_assets, volunteers: @charity_partb.volunteers } }
    end

    assert_redirected_to charity_partb_url(CharityPartb.last)
  end

  test "should show charity_partb" do
    get charity_partb_url(@charity_partb)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_partb_url(@charity_partb)
    assert_response :success
  end

  test "should update charity_partb" do
    patch charity_partb_url(@charity_partb), params: { charity_partb: { artype: @charity_partb.artype, asset_close: @charity_partb.asset_close, asset_gain: @charity_partb.asset_gain, asset_open: @charity_partb.asset_open, cash_assets: @charity_partb.cash_assets, charity_acc: @charity_partb.charity_acc, cons_acc: @charity_partb.cons_acc, credit_1: @charity_partb.credit_1, credit_long: @charity_partb.credit_long, current_assets: @charity_partb.current_assets, employees: @charity_partb.employees, exp_charble: @charity_partb.exp_charble, exp_dep: @charity_partb.exp_dep, exp_gov: @charity_partb.exp_gov, exp_grant: @charity_partb.exp_grant, exp_invest: @charity_partb.exp_invest, exp_other: @charity_partb.exp_other, exp_support: @charity_partb.exp_support, exp_total: @charity_partb.exp_total, exp_trade: @charity_partb.exp_trade, exp_vol: @charity_partb.exp_vol, fixed_assets: @charity_partb.fixed_assets, funds_end: @charity_partb.funds_end, funds_restrict: @charity_partb.funds_restrict, funds_total: @charity_partb.funds_total, funds_unrestrict: @charity_partb.funds_unrestrict, fyend: @charity_partb.fyend, fystart: @charity_partb.fystart, inc_char: @charity_partb.inc_char, inc_end: @charity_partb.inc_end, inc_fr: @charity_partb.inc_fr, inc_invest: @charity_partb.inc_invest, inc_leg: @charity_partb.inc_leg, inc_other: @charity_partb.inc_other, inc_total: @charity_partb.inc_total, inc_vol: @charity_partb.inc_vol, invest_assets: @charity_partb.invest_assets, invest_gain: @charity_partb.invest_gain, open_assets: @charity_partb.open_assets, pension_assets: @charity_partb.pension_assets, pension_gain: @charity_partb.pension_gain, regno: @charity_partb.regno, reserves: @charity_partb.reserves, total_assets: @charity_partb.total_assets, volunteers: @charity_partb.volunteers } }
    assert_redirected_to charity_partb_url(@charity_partb)
  end

  test "should destroy charity_partb" do
    assert_difference('CharityPartb.count', -1) do
      delete charity_partb_url(@charity_partb)
    end

    assert_redirected_to charity_partbs_url
  end
end

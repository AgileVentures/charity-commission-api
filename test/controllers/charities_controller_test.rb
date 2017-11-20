require 'test_helper'

class CharitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charity = charities(:one)
  end

  test "should get index" do
    get charities_url
    assert_response :success
  end

  test "should get new" do
    get new_charity_url
    assert_response :success
  end

  test "should create charity" do
    assert_difference('Charity.count') do
      post charities_url, params: { charity: { add1: @charity.add1, add2: @charity.add2, add3: @charity.add3, add4: @charity.add4, add5: @charity.add5, aob: @charity.aob, aob_defined: @charity.aob_defined, corr: @charity.corr, fax: @charity.fax, gd: @charity.gd, ha_no: @charity.ha_no, lat: @charity.lat, lon: @charity.lon, name: @charity.name, nhs: @charity.nhs, orgtype: @charity.orgtype, phone: @charity.phone, postcode: @charity.postcode, regno: @charity.regno, subno: @charity.subno, update_at: @charity.update_at } }
    end

    assert_redirected_to charity_url(Charity.last)
  end

  test "should show charity" do
    get charity_url(@charity)
    assert_response :success
  end

  test "should get edit" do
    get edit_charity_url(@charity)
    assert_response :success
  end

  test "should update charity" do
    patch charity_url(@charity), params: { charity: { add1: @charity.add1, add2: @charity.add2, add3: @charity.add3, add4: @charity.add4, add5: @charity.add5, aob: @charity.aob, aob_defined: @charity.aob_defined, corr: @charity.corr, fax: @charity.fax, gd: @charity.gd, ha_no: @charity.ha_no, lat: @charity.lat, lon: @charity.lon, name: @charity.name, nhs: @charity.nhs, orgtype: @charity.orgtype, phone: @charity.phone, postcode: @charity.postcode, regno: @charity.regno, subno: @charity.subno, update_at: @charity.update_at } }
    assert_redirected_to charity_url(@charity)
  end

  test "should destroy charity" do
    assert_difference('Charity.count', -1) do
      delete charity_url(@charity)
    end

    assert_redirected_to charities_url
  end
end

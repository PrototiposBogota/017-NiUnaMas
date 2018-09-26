require 'test_helper'

class AggressionDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aggression_detail = aggression_details(:one)
  end

  test "should get index" do
    get aggression_details_url
    assert_response :success
  end

  test "should get new" do
    get new_aggression_detail_url
    assert_response :success
  end

  test "should create aggression_detail" do
    assert_difference('AggressionDetail.count') do
      post aggression_details_url, params: { aggression_detail: { aggression_date: @aggression_detail.aggression_date, aggression_time: @aggression_detail.aggression_time, latitude_report: @aggression_detail.latitude_report, live_together: @aggression_detail.live_together, longitude_report: @aggression_detail.longitude_report, mechanism: @aggression_detail.mechanism, perpetrator_age: @aggression_detail.perpetrator_age, perpetrator_gender: @aggression_detail.perpetrator_gender, perpetrator_name: @aggression_detail.perpetrator_name, proof_file: @aggression_detail.proof_file, relatioship: @aggression_detail.relatioship, scene: @aggression_detail.scene, user_id: @aggression_detail.user_id } }
    end

    assert_redirected_to aggression_detail_url(AggressionDetail.last)
  end

  test "should show aggression_detail" do
    get aggression_detail_url(@aggression_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_aggression_detail_url(@aggression_detail)
    assert_response :success
  end

  test "should update aggression_detail" do
    patch aggression_detail_url(@aggression_detail), params: { aggression_detail: { aggression_date: @aggression_detail.aggression_date, aggression_time: @aggression_detail.aggression_time, latitude_report: @aggression_detail.latitude_report, live_together: @aggression_detail.live_together, longitude_report: @aggression_detail.longitude_report, mechanism: @aggression_detail.mechanism, perpetrator_age: @aggression_detail.perpetrator_age, perpetrator_gender: @aggression_detail.perpetrator_gender, perpetrator_name: @aggression_detail.perpetrator_name, proof_file: @aggression_detail.proof_file, relatioship: @aggression_detail.relatioship, scene: @aggression_detail.scene, user_id: @aggression_detail.user_id } }
    assert_redirected_to aggression_detail_url(@aggression_detail)
  end

  test "should destroy aggression_detail" do
    assert_difference('AggressionDetail.count', -1) do
      delete aggression_detail_url(@aggression_detail)
    end

    assert_redirected_to aggression_details_url
  end
end

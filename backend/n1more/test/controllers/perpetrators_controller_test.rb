require 'test_helper'

class PerpetratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perpetrator = perpetrators(:one)
  end

  test "should get index" do
    get perpetrators_url
    assert_response :success
  end

  test "should get new" do
    get new_perpetrator_url
    assert_response :success
  end

  test "should create perpetrator" do
    assert_difference('Perpetrator.count') do
      post perpetrators_url, params: { perpetrator: { age: @perpetrator.age, aggression_detail_id: @perpetrator.aggression_detail_id, gender: @perpetrator.gender, live_together: @perpetrator.live_together, name: @perpetrator.name, relationship: @perpetrator.relationship } }
    end

    assert_redirected_to perpetrator_url(Perpetrator.last)
  end

  test "should show perpetrator" do
    get perpetrator_url(@perpetrator)
    assert_response :success
  end

  test "should get edit" do
    get edit_perpetrator_url(@perpetrator)
    assert_response :success
  end

  test "should update perpetrator" do
    patch perpetrator_url(@perpetrator), params: { perpetrator: { age: @perpetrator.age, aggression_detail_id: @perpetrator.aggression_detail_id, gender: @perpetrator.gender, live_together: @perpetrator.live_together, name: @perpetrator.name, relationship: @perpetrator.relationship } }
    assert_redirected_to perpetrator_url(@perpetrator)
  end

  test "should destroy perpetrator" do
    assert_difference('Perpetrator.count', -1) do
      delete perpetrator_url(@perpetrator)
    end

    assert_redirected_to perpetrators_url
  end
end

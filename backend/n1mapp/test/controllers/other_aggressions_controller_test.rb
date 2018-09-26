require 'test_helper'

class OtherAggressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @other_aggression = other_aggressions(:one)
  end

  test "should get index" do
    get other_aggressions_url
    assert_response :success
  end

  test "should get new" do
    get new_other_aggression_url
    assert_response :success
  end

  test "should create other_aggression" do
    assert_difference('OtherAggression.count') do
      post other_aggressions_url, params: { other_aggression: { aggression_detail_id: @other_aggression.aggression_detail_id, description: @other_aggression.description, name: @other_aggression.name } }
    end

    assert_redirected_to other_aggression_url(OtherAggression.last)
  end

  test "should show other_aggression" do
    get other_aggression_url(@other_aggression)
    assert_response :success
  end

  test "should get edit" do
    get edit_other_aggression_url(@other_aggression)
    assert_response :success
  end

  test "should update other_aggression" do
    patch other_aggression_url(@other_aggression), params: { other_aggression: { aggression_detail_id: @other_aggression.aggression_detail_id, description: @other_aggression.description, name: @other_aggression.name } }
    assert_redirected_to other_aggression_url(@other_aggression)
  end

  test "should destroy other_aggression" do
    assert_difference('OtherAggression.count', -1) do
      delete other_aggression_url(@other_aggression)
    end

    assert_redirected_to other_aggressions_url
  end
end

require 'test_helper'

class SexualAggressionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sexual_aggression = sexual_aggressions(:one)
  end

  test "should get index" do
    get sexual_aggressions_url
    assert_response :success
  end

  test "should get new" do
    get new_sexual_aggression_url
    assert_response :success
  end

  test "should create sexual_aggression" do
    assert_difference('SexualAggression.count') do
      post sexual_aggressions_url, params: { sexual_aggression: { aggression_detail_id: @sexual_aggression.aggression_detail_id, description: @sexual_aggression.description, name: @sexual_aggression.name } }
    end

    assert_redirected_to sexual_aggression_url(SexualAggression.last)
  end

  test "should show sexual_aggression" do
    get sexual_aggression_url(@sexual_aggression)
    assert_response :success
  end

  test "should get edit" do
    get edit_sexual_aggression_url(@sexual_aggression)
    assert_response :success
  end

  test "should update sexual_aggression" do
    patch sexual_aggression_url(@sexual_aggression), params: { sexual_aggression: { aggression_detail_id: @sexual_aggression.aggression_detail_id, description: @sexual_aggression.description, name: @sexual_aggression.name } }
    assert_redirected_to sexual_aggression_url(@sexual_aggression)
  end

  test "should destroy sexual_aggression" do
    assert_difference('SexualAggression.count', -1) do
      delete sexual_aggression_url(@sexual_aggression)
    end

    assert_redirected_to sexual_aggressions_url
  end
end

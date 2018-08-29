require 'test_helper'

class HelpCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_center = help_centers(:one)
  end

  test "should get index" do
    get help_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_help_center_url
    assert_response :success
  end

  test "should create help_center" do
    assert_difference('HelpCenter.count') do
      post help_centers_url, params: { help_center: { address: @help_center.address, latitude: @help_center.latitude, longitude: @help_center.longitude, name: @help_center.name, phone_number: @help_center.phone_number, picture: @help_center.picture, schedule: @help_center.schedule } }
    end

    assert_redirected_to help_center_url(HelpCenter.last)
  end

  test "should show help_center" do
    get help_center_url(@help_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_center_url(@help_center)
    assert_response :success
  end

  test "should update help_center" do
    patch help_center_url(@help_center), params: { help_center: { address: @help_center.address, latitude: @help_center.latitude, longitude: @help_center.longitude, name: @help_center.name, phone_number: @help_center.phone_number, picture: @help_center.picture, schedule: @help_center.schedule } }
    assert_redirected_to help_center_url(@help_center)
  end

  test "should destroy help_center" do
    assert_difference('HelpCenter.count', -1) do
      delete help_center_url(@help_center)
    end

    assert_redirected_to help_centers_url
  end
end

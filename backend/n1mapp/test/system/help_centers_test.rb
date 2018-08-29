require "application_system_test_case"

class HelpCentersTest < ApplicationSystemTestCase
  setup do
    @help_center = help_centers(:one)
  end

  test "visiting the index" do
    visit help_centers_url
    assert_selector "h1", text: "Help Centers"
  end

  test "creating a Help center" do
    visit help_centers_url
    click_on "New Help Center"

    fill_in "Address", with: @help_center.address
    fill_in "Latitude", with: @help_center.latitude
    fill_in "Longitude", with: @help_center.longitude
    fill_in "Name", with: @help_center.name
    fill_in "Phone Number", with: @help_center.phone_number
    fill_in "Picture", with: @help_center.picture
    fill_in "Schedule", with: @help_center.schedule
    click_on "Create Help center"

    assert_text "Help center was successfully created"
    click_on "Back"
  end

  test "updating a Help center" do
    visit help_centers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @help_center.address
    fill_in "Latitude", with: @help_center.latitude
    fill_in "Longitude", with: @help_center.longitude
    fill_in "Name", with: @help_center.name
    fill_in "Phone Number", with: @help_center.phone_number
    fill_in "Picture", with: @help_center.picture
    fill_in "Schedule", with: @help_center.schedule
    click_on "Update Help center"

    assert_text "Help center was successfully updated"
    click_on "Back"
  end

  test "destroying a Help center" do
    visit help_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Help center was successfully destroyed"
  end
end

require "application_system_test_case"

class AttentionCentersTest < ApplicationSystemTestCase
  setup do
    @attention_center = attention_centers(:one)
  end

  test "visiting the index" do
    visit attention_centers_url
    assert_selector "h1", text: "Attention Centers"
  end

  test "creating a Attention center" do
    visit attention_centers_url
    click_on "New Attention Center"

    fill_in "Address", with: @attention_center.address
    fill_in "Code", with: @attention_center.code
    fill_in "Latitude", with: @attention_center.latitude
    fill_in "Longitude", with: @attention_center.longitude
    fill_in "Name", with: @attention_center.name
    fill_in "Phone Number", with: @attention_center.phone_number
    fill_in "Picture", with: @attention_center.picture
    fill_in "Schedule", with: @attention_center.schedule
    click_on "Create Attention center"

    assert_text "Attention center was successfully created"
    click_on "Back"
  end

  test "updating a Attention center" do
    visit attention_centers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @attention_center.address
    fill_in "Code", with: @attention_center.code
    fill_in "Latitude", with: @attention_center.latitude
    fill_in "Longitude", with: @attention_center.longitude
    fill_in "Name", with: @attention_center.name
    fill_in "Phone Number", with: @attention_center.phone_number
    fill_in "Picture", with: @attention_center.picture
    fill_in "Schedule", with: @attention_center.schedule
    click_on "Update Attention center"

    assert_text "Attention center was successfully updated"
    click_on "Back"
  end

  test "destroying a Attention center" do
    visit attention_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attention center was successfully destroyed"
  end
end

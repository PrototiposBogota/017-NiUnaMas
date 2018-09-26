require "application_system_test_case"

class AggressionDetailsTest < ApplicationSystemTestCase
  setup do
    @aggression_detail = aggression_details(:one)
  end

  test "visiting the index" do
    visit aggression_details_url
    assert_selector "h1", text: "Aggression Details"
  end

  test "creating a Aggression detail" do
    visit aggression_details_url
    click_on "New Aggression Detail"

    fill_in "Aggression Date", with: @aggression_detail.aggression_date
    fill_in "Aggression Time", with: @aggression_detail.aggression_time
    fill_in "Latitude Report", with: @aggression_detail.latitude_report
    fill_in "Live Together", with: @aggression_detail.live_together
    fill_in "Longitude Report", with: @aggression_detail.longitude_report
    fill_in "Mechanism", with: @aggression_detail.mechanism
    fill_in "Perpetrator Age", with: @aggression_detail.perpetrator_age
    fill_in "Perpetrator Gender", with: @aggression_detail.perpetrator_gender
    fill_in "Perpetrator Name", with: @aggression_detail.perpetrator_name
    fill_in "Proof File", with: @aggression_detail.proof_file
    fill_in "Relatioship", with: @aggression_detail.relatioship
    fill_in "Scene", with: @aggression_detail.scene
    fill_in "User", with: @aggression_detail.user_id
    click_on "Create Aggression detail"

    assert_text "Aggression detail was successfully created"
    click_on "Back"
  end

  test "updating a Aggression detail" do
    visit aggression_details_url
    click_on "Edit", match: :first

    fill_in "Aggression Date", with: @aggression_detail.aggression_date
    fill_in "Aggression Time", with: @aggression_detail.aggression_time
    fill_in "Latitude Report", with: @aggression_detail.latitude_report
    fill_in "Live Together", with: @aggression_detail.live_together
    fill_in "Longitude Report", with: @aggression_detail.longitude_report
    fill_in "Mechanism", with: @aggression_detail.mechanism
    fill_in "Perpetrator Age", with: @aggression_detail.perpetrator_age
    fill_in "Perpetrator Gender", with: @aggression_detail.perpetrator_gender
    fill_in "Perpetrator Name", with: @aggression_detail.perpetrator_name
    fill_in "Proof File", with: @aggression_detail.proof_file
    fill_in "Relatioship", with: @aggression_detail.relatioship
    fill_in "Scene", with: @aggression_detail.scene
    fill_in "User", with: @aggression_detail.user_id
    click_on "Update Aggression detail"

    assert_text "Aggression detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Aggression detail" do
    visit aggression_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aggression detail was successfully destroyed"
  end
end

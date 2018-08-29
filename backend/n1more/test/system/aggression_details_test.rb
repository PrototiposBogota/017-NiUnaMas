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
    fill_in "Longitude Report", with: @aggression_detail.longitude_report
    fill_in "Mechanism", with: @aggression_detail.mechanism
    fill_in "Proof File", with: @aggression_detail.proof_file
    fill_in "Scene", with: @aggression_detail.scene
    fill_in "Victim", with: @aggression_detail.victim_id
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
    fill_in "Longitude Report", with: @aggression_detail.longitude_report
    fill_in "Mechanism", with: @aggression_detail.mechanism
    fill_in "Proof File", with: @aggression_detail.proof_file
    fill_in "Scene", with: @aggression_detail.scene
    fill_in "Victim", with: @aggression_detail.victim_id
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

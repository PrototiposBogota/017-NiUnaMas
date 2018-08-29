require "application_system_test_case"

class PerpetratorsTest < ApplicationSystemTestCase
  setup do
    @perpetrator = perpetrators(:one)
  end

  test "visiting the index" do
    visit perpetrators_url
    assert_selector "h1", text: "Perpetrators"
  end

  test "creating a Perpetrator" do
    visit perpetrators_url
    click_on "New Perpetrator"

    fill_in "Age", with: @perpetrator.age
    fill_in "Aggression Detail", with: @perpetrator.aggression_detail_id
    fill_in "Gender", with: @perpetrator.gender
    fill_in "Live Together", with: @perpetrator.live_together
    fill_in "Name", with: @perpetrator.name
    fill_in "Relationship", with: @perpetrator.relationship
    click_on "Create Perpetrator"

    assert_text "Perpetrator was successfully created"
    click_on "Back"
  end

  test "updating a Perpetrator" do
    visit perpetrators_url
    click_on "Edit", match: :first

    fill_in "Age", with: @perpetrator.age
    fill_in "Aggression Detail", with: @perpetrator.aggression_detail_id
    fill_in "Gender", with: @perpetrator.gender
    fill_in "Live Together", with: @perpetrator.live_together
    fill_in "Name", with: @perpetrator.name
    fill_in "Relationship", with: @perpetrator.relationship
    click_on "Update Perpetrator"

    assert_text "Perpetrator was successfully updated"
    click_on "Back"
  end

  test "destroying a Perpetrator" do
    visit perpetrators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Perpetrator was successfully destroyed"
  end
end

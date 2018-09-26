require "application_system_test_case"

class OtherAggressionsTest < ApplicationSystemTestCase
  setup do
    @other_aggression = other_aggressions(:one)
  end

  test "visiting the index" do
    visit other_aggressions_url
    assert_selector "h1", text: "Other Aggressions"
  end

  test "creating a Other aggression" do
    visit other_aggressions_url
    click_on "New Other Aggression"

    fill_in "Aggression Detail", with: @other_aggression.aggression_detail_id
    fill_in "Description", with: @other_aggression.description
    fill_in "Name", with: @other_aggression.name
    click_on "Create Other aggression"

    assert_text "Other aggression was successfully created"
    click_on "Back"
  end

  test "updating a Other aggression" do
    visit other_aggressions_url
    click_on "Edit", match: :first

    fill_in "Aggression Detail", with: @other_aggression.aggression_detail_id
    fill_in "Description", with: @other_aggression.description
    fill_in "Name", with: @other_aggression.name
    click_on "Update Other aggression"

    assert_text "Other aggression was successfully updated"
    click_on "Back"
  end

  test "destroying a Other aggression" do
    visit other_aggressions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Other aggression was successfully destroyed"
  end
end

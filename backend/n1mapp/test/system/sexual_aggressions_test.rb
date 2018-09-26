require "application_system_test_case"

class SexualAggressionsTest < ApplicationSystemTestCase
  setup do
    @sexual_aggression = sexual_aggressions(:one)
  end

  test "visiting the index" do
    visit sexual_aggressions_url
    assert_selector "h1", text: "Sexual Aggressions"
  end

  test "creating a Sexual aggression" do
    visit sexual_aggressions_url
    click_on "New Sexual Aggression"

    fill_in "Aggression Detail", with: @sexual_aggression.aggression_detail_id
    fill_in "Description", with: @sexual_aggression.description
    fill_in "Name", with: @sexual_aggression.name
    click_on "Create Sexual aggression"

    assert_text "Sexual aggression was successfully created"
    click_on "Back"
  end

  test "updating a Sexual aggression" do
    visit sexual_aggressions_url
    click_on "Edit", match: :first

    fill_in "Aggression Detail", with: @sexual_aggression.aggression_detail_id
    fill_in "Description", with: @sexual_aggression.description
    fill_in "Name", with: @sexual_aggression.name
    click_on "Update Sexual aggression"

    assert_text "Sexual aggression was successfully updated"
    click_on "Back"
  end

  test "destroying a Sexual aggression" do
    visit sexual_aggressions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sexual aggression was successfully destroyed"
  end
end

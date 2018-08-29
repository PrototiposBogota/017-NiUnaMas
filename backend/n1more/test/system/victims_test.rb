require "application_system_test_case"

class VictimsTest < ApplicationSystemTestCase
  setup do
    @victim = victims(:one)
  end

  test "visiting the index" do
    visit victims_url
    assert_selector "h1", text: "Victims"
  end

  test "creating a Victim" do
    visit victims_url
    click_on "New Victim"

    fill_in "Attendant Name", with: @victim.attendant_name
    fill_in "Attendant Phone Number", with: @victim.attendant_phone_number
    fill_in "District", with: @victim.district
    fill_in "Document Number", with: @victim.document_number
    fill_in "Document Type", with: @victim.document_type
    fill_in "Email", with: @victim.email
    fill_in "Name", with: @victim.name
    fill_in "Password", with: @victim.password
    fill_in "Phone Number", with: @victim.phone_number
    fill_in "Picture", with: @victim.picture
    fill_in "Sexual Orientation", with: @victim.sexual_orientation
    fill_in "Surname", with: @victim.surname
    click_on "Create Victim"

    assert_text "Victim was successfully created"
    click_on "Back"
  end

  test "updating a Victim" do
    visit victims_url
    click_on "Edit", match: :first

    fill_in "Attendant Name", with: @victim.attendant_name
    fill_in "Attendant Phone Number", with: @victim.attendant_phone_number
    fill_in "District", with: @victim.district
    fill_in "Document Number", with: @victim.document_number
    fill_in "Document Type", with: @victim.document_type
    fill_in "Email", with: @victim.email
    fill_in "Name", with: @victim.name
    fill_in "Password", with: @victim.password
    fill_in "Phone Number", with: @victim.phone_number
    fill_in "Picture", with: @victim.picture
    fill_in "Sexual Orientation", with: @victim.sexual_orientation
    fill_in "Surname", with: @victim.surname
    click_on "Update Victim"

    assert_text "Victim was successfully updated"
    click_on "Back"
  end

  test "destroying a Victim" do
    visit victims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Victim was successfully destroyed"
  end
end

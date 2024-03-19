require "application_system_test_case"

class ProgramminglanguagesTest < ApplicationSystemTestCase
  setup do
    @programminglanguage = programminglanguages(:one)
  end

  test "visiting the index" do
    visit programminglanguages_url
    assert_selector "h1", text: "Programminglanguages"
  end

  test "should create programminglanguage" do
    visit programminglanguages_url
    click_on "New programminglanguage"

    fill_in "Name", with: @programminglanguage.name
    click_on "Create Programminglanguage"

    assert_text "Programminglanguage was successfully created"
    click_on "Back"
  end

  test "should update Programminglanguage" do
    visit programminglanguage_url(@programminglanguage)
    click_on "Edit this programminglanguage", match: :first

    fill_in "Name", with: @programminglanguage.name
    click_on "Update Programminglanguage"

    assert_text "Programminglanguage was successfully updated"
    click_on "Back"
  end

  test "should destroy Programminglanguage" do
    visit programminglanguage_url(@programminglanguage)
    click_on "Destroy this programminglanguage", match: :first

    assert_text "Programminglanguage was successfully destroyed"
  end
end

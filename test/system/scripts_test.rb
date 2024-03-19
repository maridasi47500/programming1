require "application_system_test_case"

class ScriptsTest < ApplicationSystemTestCase
  setup do
    @script = scripts(:one)
  end

  test "visiting the index" do
    visit scripts_url
    assert_selector "h1", text: "Scripts"
  end

  test "should create script" do
    visit scripts_url
    click_on "New script"

    fill_in "Filename", with: @script.filename
    fill_in "Mypart", with: @script.mypart_id
    fill_in "Programminglanguage", with: @script.programminglanguage_id
    click_on "Create Script"

    assert_text "Script was successfully created"
    click_on "Back"
  end

  test "should update Script" do
    visit script_url(@script)
    click_on "Edit this script", match: :first

    fill_in "Filename", with: @script.filename
    fill_in "Mypart", with: @script.mypart_id
    fill_in "Programminglanguage", with: @script.programminglanguage_id
    click_on "Update Script"

    assert_text "Script was successfully updated"
    click_on "Back"
  end

  test "should destroy Script" do
    visit script_url(@script)
    click_on "Destroy this script", match: :first

    assert_text "Script was successfully destroyed"
  end
end

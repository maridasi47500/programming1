require "application_system_test_case"

class MotsTest < ApplicationSystemTestCase
  setup do
    @mot = mots(:one)
  end

  test "visiting the index" do
    visit mots_url
    assert_selector "h1", text: "Mots"
  end

  test "should create mot" do
    visit mots_url
    click_on "New mot"

    fill_in "Description", with: @mot.description
    fill_in "Mot", with: @mot.mot
    fill_in "Mypart", with: @mot.mypart_id
    click_on "Create Mot"

    assert_text "Mot was successfully created"
    click_on "Back"
  end

  test "should update Mot" do
    visit mot_url(@mot)
    click_on "Edit this mot", match: :first

    fill_in "Description", with: @mot.description
    fill_in "Mot", with: @mot.mot
    fill_in "Mypart", with: @mot.mypart_id
    click_on "Update Mot"

    assert_text "Mot was successfully updated"
    click_on "Back"
  end

  test "should destroy Mot" do
    visit mot_url(@mot)
    click_on "Destroy this mot", match: :first

    assert_text "Mot was successfully destroyed"
  end
end

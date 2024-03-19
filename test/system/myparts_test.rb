require "application_system_test_case"

class MypartsTest < ApplicationSystemTestCase
  setup do
    @mypart = myparts(:one)
  end

  test "visiting the index" do
    visit myparts_url
    assert_selector "h1", text: "Myparts"
  end

  test "should create mypart" do
    visit myparts_url
    click_on "New mypart"

    fill_in "Algo", with: @mypart.algo_id
    fill_in "Title", with: @mypart.title
    click_on "Create Mypart"

    assert_text "Mypart was successfully created"
    click_on "Back"
  end

  test "should update Mypart" do
    visit mypart_url(@mypart)
    click_on "Edit this mypart", match: :first

    fill_in "Algo", with: @mypart.algo_id
    fill_in "Title", with: @mypart.title
    click_on "Update Mypart"

    assert_text "Mypart was successfully updated"
    click_on "Back"
  end

  test "should destroy Mypart" do
    visit mypart_url(@mypart)
    click_on "Destroy this mypart", match: :first

    assert_text "Mypart was successfully destroyed"
  end
end

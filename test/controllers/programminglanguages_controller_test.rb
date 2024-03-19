require "test_helper"

class ProgramminglanguagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programminglanguage = programminglanguages(:one)
  end

  test "should get index" do
    get programminglanguages_url
    assert_response :success
  end

  test "should get new" do
    get new_programminglanguage_url
    assert_response :success
  end

  test "should create programminglanguage" do
    assert_difference("Programminglanguage.count") do
      post programminglanguages_url, params: { programminglanguage: { name: @programminglanguage.name } }
    end

    assert_redirected_to programminglanguage_url(Programminglanguage.last)
  end

  test "should show programminglanguage" do
    get programminglanguage_url(@programminglanguage)
    assert_response :success
  end

  test "should get edit" do
    get edit_programminglanguage_url(@programminglanguage)
    assert_response :success
  end

  test "should update programminglanguage" do
    patch programminglanguage_url(@programminglanguage), params: { programminglanguage: { name: @programminglanguage.name } }
    assert_redirected_to programminglanguage_url(@programminglanguage)
  end

  test "should destroy programminglanguage" do
    assert_difference("Programminglanguage.count", -1) do
      delete programminglanguage_url(@programminglanguage)
    end

    assert_redirected_to programminglanguages_url
  end
end

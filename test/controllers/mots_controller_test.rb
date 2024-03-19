require "test_helper"

class MotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mot = mots(:one)
  end

  test "should get index" do
    get mots_url
    assert_response :success
  end

  test "should get new" do
    get new_mot_url
    assert_response :success
  end

  test "should create mot" do
    assert_difference("Mot.count") do
      post mots_url, params: { mot: { description: @mot.description, mot: @mot.mot, mypart_id: @mot.mypart_id } }
    end

    assert_redirected_to mot_url(Mot.last)
  end

  test "should show mot" do
    get mot_url(@mot)
    assert_response :success
  end

  test "should get edit" do
    get edit_mot_url(@mot)
    assert_response :success
  end

  test "should update mot" do
    patch mot_url(@mot), params: { mot: { description: @mot.description, mot: @mot.mot, mypart_id: @mot.mypart_id } }
    assert_redirected_to mot_url(@mot)
  end

  test "should destroy mot" do
    assert_difference("Mot.count", -1) do
      delete mot_url(@mot)
    end

    assert_redirected_to mots_url
  end
end

require "test_helper"

class MypartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mypart = myparts(:one)
  end

  test "should get index" do
    get myparts_url
    assert_response :success
  end

  test "should get new" do
    get new_mypart_url
    assert_response :success
  end

  test "should create mypart" do
    assert_difference("Mypart.count") do
      post myparts_url, params: { mypart: { algo_id: @mypart.algo_id, title: @mypart.title } }
    end

    assert_redirected_to mypart_url(Mypart.last)
  end

  test "should show mypart" do
    get mypart_url(@mypart)
    assert_response :success
  end

  test "should get edit" do
    get edit_mypart_url(@mypart)
    assert_response :success
  end

  test "should update mypart" do
    patch mypart_url(@mypart), params: { mypart: { algo_id: @mypart.algo_id, title: @mypart.title } }
    assert_redirected_to mypart_url(@mypart)
  end

  test "should destroy mypart" do
    assert_difference("Mypart.count", -1) do
      delete mypart_url(@mypart)
    end

    assert_redirected_to myparts_url
  end
end

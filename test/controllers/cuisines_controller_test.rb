require "test_helper"

class CuisinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuisine = cuisines(:one)
  end

  test "should get index" do
    get cuisines_url, as: :json
    assert_response :success
  end

  test "should create cuisine" do
    assert_difference("Cuisine.count") do
      post cuisines_url, params: { cuisine: { type: @cuisine.type } }, as: :json
    end

    assert_response :created
  end

  test "should show cuisine" do
    get cuisine_url(@cuisine), as: :json
    assert_response :success
  end

  test "should update cuisine" do
    patch cuisine_url(@cuisine), params: { cuisine: { type: @cuisine.type } }, as: :json
    assert_response :success
  end

  test "should destroy cuisine" do
    assert_difference("Cuisine.count", -1) do
      delete cuisine_url(@cuisine), as: :json
    end

    assert_response :no_content
  end
end

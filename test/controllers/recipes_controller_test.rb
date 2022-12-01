require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "should create recipe" do
    assert_difference("Recipe.count") do
      post recipes_url, params: { recipe: { author_name: @recipe.author_name, calories: @recipe.calories, duration: @recipe.duration, popularity: @recipe.popularity, rating: @recipe.rating, servings: @recipe.servings, title: @recipe.title } }, as: :json
    end

    assert_response :created
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { author_name: @recipe.author_name, calories: @recipe.calories, duration: @recipe.duration, popularity: @recipe.popularity, rating: @recipe.rating, servings: @recipe.servings, title: @recipe.title } }, as: :json
    assert_response :success
  end

  test "should destroy recipe" do
    assert_difference("Recipe.count", -1) do
      delete recipe_url(@recipe), as: :json
    end

    assert_response :no_content
  end
end

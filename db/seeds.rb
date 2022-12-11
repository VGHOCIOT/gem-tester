# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   Adding random information with Faker https://www.bearer.com/blog/infinite-scrolling-pagination-hotwire
require 'faker'

# 20.times do
#     Cuisine.create(name: Faker::Food.ethnic_category)
# end

# random_vals = 5.times.map { rand(1..20) }

# 45.times do 
#     Recipe.create(title: Faker::Food.dish, rating: rand(5), author_name: Faker::Name.name, duration: rand(30..120), calories: rand(500..1000), servings: rand(1..4), popularity: :popular, cuisine_id: Cuisine.find(rand(1..20)).id )
# end 

(1..45).each do |val|
    (1..5).each do |index| 
        Step.create(step_number: index, description: Faker::Lorem.sentence, completed: false, recipe_id: Recipe.find(val).id)
    end 
    # 10.times do 
    #     Ingredient.create(ingredient_name: Faker::Food.ingredient, recipe_id: Recipe.find(val).id)
    # end
end
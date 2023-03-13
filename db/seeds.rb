# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

RecipeFood.destroy_all
Food.destroy_all
RecipeItem.destroy_all

# User seeder
user_1 = User.first
user_2 = User.second


p "Created #{User.count} Users"

# Food seeder
food_1 = Food.create(user: user_1, name: "Soup", measurement_unit: "gram", quantity: 2, price: 10)
food_2 = Food.create(user: user_2, name: "Spagetti", measurement_unit: "unit", quantity: 1, price: 15)


p "Created #{Food.count} Foods"

# RecipeItem seeder
recipe_1 = RecipeItem.create(user: user_1, name: "Recipe_1", preparation_time: 1, cooking_time: 2, description: "Lorem lorem lorem", public: true)
recipe_2 = RecipeItem.create(user: user_2, name: "Recipe_2", preparation_time: 2, cooking_time: 4, description: "Lorem lorem lorem lorem hey", public: false)


p "Created #{RecipeItem.count} RecipeItems"

# RecipeFood seeder
recipe_food_1 = RecipeFood.create(food: food_1, recipe_item: recipe_2, quantity: 2)
recipe_food_2 = RecipeFood.create(food: food_2, recipe_item: recipe_1, quantity: 3)


p "Created #{RecipeFood.count} RecipeFoods"


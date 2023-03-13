class RecipeFood < ApplicationRecord
  belongs_to :recipe_item
  belongs_to :food
end

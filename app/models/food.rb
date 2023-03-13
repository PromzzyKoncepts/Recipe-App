class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
  has_many :recipe_items, through: :recipe_foods
end

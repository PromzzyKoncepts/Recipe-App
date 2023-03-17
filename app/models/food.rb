class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :recipe_items, through: :recipe_foods, dependent: :destroy

  validates :name, :measurement_unit, :quantity, :price, presence: true
end

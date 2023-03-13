FactoryBot.define do
  factory :recipe_food do
    recipe_item { nil }
    food { nil }
    quantity { 1 }
  end
end

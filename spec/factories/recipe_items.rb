FactoryBot.define do
  factory :recipe_item do
    name { 'MyString' }
    preparation_time { 1 }
    cooking_time { 1 }
    description { 'MyText' }
    public { false }
    user { nil }
  end
end

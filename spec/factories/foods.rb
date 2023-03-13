FactoryBot.define do
  factory :food do
    name { 'MyString' }
    measurement_unit { 'MyString' }
    quantity { 1 }
    price { '9.99' }
    user { nil }
  end
end

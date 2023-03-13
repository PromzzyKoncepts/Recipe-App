require 'rails_helper'

RSpec.describe 'recipe_items/edit', type: :view do
  let(:recipe_item) do
    RecipeItem.create!(
      name: 'MyString',
      preparation_time: 1,
      cooking_time: 1,
      description: 'MyText',
      public: false,
      user: nil
    )
  end

  before(:each) do
    assign(:recipe_item, recipe_item)
  end

  it 'renders the edit recipe_item form' do
    render

    assert_select 'form[action=?][method=?]', recipe_item_path(recipe_item), 'post' do
      assert_select 'input[name=?]', 'recipe_item[name]'

      assert_select 'input[name=?]', 'recipe_item[preparation_time]'

      assert_select 'input[name=?]', 'recipe_item[cooking_time]'

      assert_select 'textarea[name=?]', 'recipe_item[description]'

      assert_select 'input[name=?]', 'recipe_item[public]'

      assert_select 'input[name=?]', 'recipe_item[user_id]'
    end
  end
end

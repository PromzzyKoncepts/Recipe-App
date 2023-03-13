require 'rails_helper'

RSpec.describe 'recipe_items/new', type: :view do
  before(:each) do
    assign(:recipe_item, RecipeItem.new(
                           name: 'MyString',
                           preparation_time: 1,
                           cooking_time: 1,
                           description: 'MyText',
                           public: false,
                           user: nil
                         ))
  end

  it 'renders new recipe_item form' do
    render

    assert_select 'form[action=?][method=?]', recipe_items_path, 'post' do
      assert_select 'input[name=?]', 'recipe_item[name]'

      assert_select 'input[name=?]', 'recipe_item[preparation_time]'

      assert_select 'input[name=?]', 'recipe_item[cooking_time]'

      assert_select 'textarea[name=?]', 'recipe_item[description]'

      assert_select 'input[name=?]', 'recipe_item[public]'

      assert_select 'input[name=?]', 'recipe_item[user_id]'
    end
  end
end

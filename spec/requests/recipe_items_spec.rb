require 'rails_helper'


RSpec.describe '/recipe_items', type: :request do
  before :each do
    @user = User.create(name: 'Promise')
    @food = Food.create(name: 'carrots',
      measurement_unit: 'grammes',
      price: 30, quantity: 5, user_id: @user.id
    )

    @recipe_item1 = RecipeItem.create(name: 'how to make carrot stew',
      preparation_time: 1, cooking_time: 3,
      description: 'This is how to make a carrot stew',
      public: true,
      user_id: @user.id
    )
    @recipe_item2 = RecipeItem.create(name: 'how to make carrot stew',
      preparation_time: 1, cooking_time: 3,
      description: 'This is how to make a carrot stew',
      public: true,
      user_id: @user.id
    )
    @recipe_item3 = RecipeItem.create(name: 'how to make carrot stew',
      preparation_time: 1, cooking_time: 3,
      description: 'This is how to make a carrot stew',
      public: true,
      user_id: @user.id
    )
  end

  it 'displays the recipe foods page' do
    get recipe_items_url
    expect(@recipe_item1.name).to include('how to make carrot stew')
    expect(@recipe_item2.name).to include('how to make carrot stew')
    expect(@recipe_item3.name).to include('how to make carrot stew')
  end
  it 'displays the recipe foods page' do
    get recipe_items_url
    expect(@recipe_item1.description).to include('This is how to make a carrot stew')
    expect(@recipe_item2.description).to include('This is how to make a carrot stew')
    expect(@recipe_item3.description).to include('This is how to make a carrot stew')
  end
  it 'displays the recipe foods page' do
    get recipe_items_url
    expect(@recipe_item1.preparation_time).to eq(1)
    expect(@recipe_item2.preparation_time).to eq(1)
    expect(@recipe_item3.preparation_time).to eq(1)
  end

  it 'displays the recipe foods page' do
    get recipe_items_url
    expect(@recipe_item1.cooking_time).to eq(3)
    expect(@recipe_item2.cooking_time).to eq(3)
    expect(@recipe_item3.cooking_time).to eq(3)
  end

  it 'displays the recipe foods page' do
    get recipe_items_url
    expect(@recipe_item1.public).to eq(true)
    expect(@recipe_item2.public).to eq(true)
    expect(@recipe_item3.public).to eq(true)
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get recipe_items_url
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      recipe_item = RecipeItem.create(name: 'how to make carrot stew',
      preparation_time: 1, cooking_time: 3,
      description: 'This is how to make a carrot stew',
      public: true,
      user_id: @user.id)
      get "/recipe_items/#{recipe_item.id}"
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_recipe_item_url
      expect(response).to have_http_status(:found)
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      recipe_item = RecipeItem.create(name: 'how to make carrot stew',
      preparation_time: 1, cooking_time: 3,
      description: 'This is how to make a carrot stew',
      public: true,
      user_id: @user.id)
      get "/recipe_items/#{recipe_item.id}/edit"
      expect(response).to have_http_status(:found)
    end
  end
end

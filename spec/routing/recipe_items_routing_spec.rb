require 'rails_helper'

RSpec.describe RecipeItemsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipe_items').to route_to('recipe_items#index')
    end

    it 'routes to #new' do
      expect(get: '/recipe_items/new').to route_to('recipe_items#new')
    end

    it 'routes to #show' do
      expect(get: '/recipe_items/1').to route_to('recipe_items#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/recipe_items/1/edit').to route_to('recipe_items#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/recipe_items').to route_to('recipe_items#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/recipe_items/1').to route_to('recipe_items#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/recipe_items/1').to route_to('recipe_items#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/recipe_items/1').to route_to('recipe_items#destroy', id: '1')
    end
  end
end

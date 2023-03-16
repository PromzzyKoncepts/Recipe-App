Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :recipe_foods
  resources :recipe_items
  resources :foods
  resources :users
  get '/public_recipes', to: 'recipe_items#public_recipes'
  get '/general_shopping_lists', to: 'recipe_foods#general_shopping_lists'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  root to: "user#index"
  resources :recipe_foods
  resources :recipe_items
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

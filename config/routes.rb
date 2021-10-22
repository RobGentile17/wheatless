Rails.application.routes.draw do
  devise_for :users
  
  resources :side_dishes
  root to: "home#index"

  resources :recipes
  resources :meal_plans
end

Rails.application.routes.draw do
  get 'welcomes/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "welcomes#index"
  # root "articles#index"

  resources :articles do
    resources :comments
  end
  resources :comments
  resources :tags
  resources :taggings
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
end


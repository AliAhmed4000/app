Rails.application.routes.draw do

  get 'category/show'
  get 'products/show'
  get 'products/fav'
  devise_for :customers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :user
  resources :product
  resources :favourites
  root "user#index"
  # For details on the DSL available within this file, see http://  guides.rubyonrails.org/routing.html
end

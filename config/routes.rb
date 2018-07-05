Rails.application.routes.draw do
  devise_for :users
  root 'hangouts#index'
  resources :users, only: [:show, :edit, :update]
  resources :hangouts
end

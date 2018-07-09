Rails.application.routes.draw do
  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  root 'hangouts#index'
  resources :users, only: [:show, :edit, :update]
  resources :hangouts
end

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :users, only: [:show, :edit, :update]

  root to: 'home#index'
end

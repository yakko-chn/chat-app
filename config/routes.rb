Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :sessions, only: [:destroy]

  resources :rooms, only: [:new,:create]
end

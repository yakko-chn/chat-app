Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  get '/users/sign_out' => 'devise/sessions#destroy'
  resources :users, only: [:edit, :update]
  # resources :sessions, only: [:destroy]

  resources :rooms, only: [:new, :create, :destroy ] do
    resources :messages, only: [:index, :create]
  end
end

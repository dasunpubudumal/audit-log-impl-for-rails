Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/secret'
  resources :users, only: [:index, :new, :create]
  resources :user_sessions, only: [:new, :create]
end

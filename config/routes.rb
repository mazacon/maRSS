Rails.application.routes.draw do
  resource :users, only: [:new, :create]
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'reader', to: 'readers#index'
  root 'home#index'
end
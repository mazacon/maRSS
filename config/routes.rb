Rails.application.routes.draw do
  resources :feeds
  resource :users, only: [:new, :create]
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  root 'home#index'
end
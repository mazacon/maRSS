Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'reader', to: 'readers#index'
  root 'home#index'
end
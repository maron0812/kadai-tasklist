Rails.application.routes.draw do
  get 'toppages/index'
  root to: 'toppages#index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  root to:'tasks#index'
  
  get 'signup', to: 'users#new'  
  resources :tasks 
  resources :users, only: [:show, :new, :create]
end
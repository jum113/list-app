Rails.application.routes.draw do
  devise_for :users
  root 'notes#index'
  resources :notes, only: [:index, :create, :destroy]
  resources :lists, only: [:create, :destroy]
end
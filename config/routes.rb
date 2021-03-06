Rails.application.routes.draw do
  devise_for :users
  root 'notes#index'
  resources :notes, only: [:index, :create, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :lists, only: [:create, :destroy]
  resources :users, only: [:edit, :update]
end
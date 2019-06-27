Rails.application.routes.draw do

  get 'search' => 'search#index'
  devise_for :users
  root 'home#index'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]

end
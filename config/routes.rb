Rails.application.routes.draw do
  root to: 'kittens#index'
  devise_for :users
  resources :kittens 
  resources :wallets, except: [:index]
  resources :charges, only: [:new, :create]
  resources :users, only: [:show, :edit , :update]
  resources :join_wallet_items
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
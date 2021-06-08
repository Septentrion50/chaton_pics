Rails.application.routes.draw do
  root to: 'kittens#index'
  get "/pages/:page" => "pages#show"
  devise_for :users
  resources :kittens do
    resources :pictures
  end
  resources :wallets, except: [:index]
  resources :charges, only: [:new, :create]
  resources :users, only: [:show, :edit , :update]
  resources :join_wallet_items_urls
end
Rails.application.routes.draw do
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/terms'
  get 'static_pages/privacy_policy'
  root to: 'kittens#index'
  get "/pages/:page" => "pages#show"
  devise_for :users
  resources :kittens do
    resources :pictures
  end
  resources :wallets, only: [:show] 
  resources :charges, only: [:new, :create]
  resources :users, only: [:show, :edit , :update]
  resources :line_items, only: [:create, :update, :destroy]
end
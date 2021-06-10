Rails.application.routes.draw do
  root to: 'kittens#index'
  get "/pages/:page" => "pages#show"
  devise_for :users
  resources :kittens do
    resources :pictures
  end
  resources :wallets, only: [:index] 
  resources :charges, only: [:new, :create]
  resources :users, only: [:show, :edit , :update]
  resources :line_items, only: [:create, :update, :destroy]
  namespace :admin do
    resources :kittens
  end

  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/terms', to: 'static_pages#terms', via: 'get'
  match '/privacy_policy', to: 'static_pages#privacy_policy', via: 'get'
end
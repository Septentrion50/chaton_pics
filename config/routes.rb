Rails.application.routes.draw do
  get 'charges/create'
  get 'charges/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

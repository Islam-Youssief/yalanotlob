Rails.application.routes.draw do
  resources :orders
devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'welcomes/index'
  root to: 'welcomes#index'
  resources :welcomes
end

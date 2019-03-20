Rails.application.routes.draw do
devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get 'welcomes/index'
  root to: 'welcomes#index'
  resources :welcomes
end

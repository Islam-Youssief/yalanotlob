Rails.application.routes.draw do
  resources :friends
  resources :groups do
  post 'getName'
  post 'addFriend'
  delete 'deletefriend'
end
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  post "/orders/invite.json", to: "invited_members#invite"

  resources :orders do
    get "/joined/", to: "order_informations#index"
    post"/add/", to: "order_informations#create"
    get "/invited/", to: "invited_members#index"
  end

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
Rails.application.routes.draw do
  resources :carts
  resources :games
  resources :customers
  resources :owners
  resources :users

  get '/current_user',  to: "auth#show"
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

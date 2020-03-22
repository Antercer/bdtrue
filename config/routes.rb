Rails.application.routes.draw do
  devise_for :users
  get '/boards', to: 'boards#show'
  get '/index', to: 'boards#index'
  get '/posts', to: 'posts#show'
  resources :posts
  resources :boards
end
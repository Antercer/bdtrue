Rails.application.routes.draw do
  devise_for :users
  get '/secciones', to: 'secciones#show'
  get '/index', to: 'boards#index'
  get '/posts', to: 'posts#show'
  resources :posts
  resources :boards
end
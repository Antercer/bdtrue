Rails.application.routes.draw do
  devise_for :users
  get '/secciones', to: 'secciones#show'
  get '/index', to: 'secciones#index'
  get '/posts', to: 'posts#show'
  resources :posts
  resources :secciones
end
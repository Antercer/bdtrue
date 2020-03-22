Rails.application.routes.draw do
  devise_for :users
  get '/home', to: 'home#home'
  get '/secciones', to: 'secciones#index'
  get '/posts', to: 'posts#show'
  resources :posts
  resources :secciones
end
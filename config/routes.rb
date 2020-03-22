Rails.application.routes.draw do
  get '/home', to: 'home#home'
  get '/secciones', to: 'secciones#index'
  get '/posts', to: 'posts#show'
  resources :posts
end
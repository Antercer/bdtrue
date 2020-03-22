Rails.application.routes.draw do
  get '/home', to: 'home#home'
  get '/secciones', to: 'secciones#index'

  resources :posts
end
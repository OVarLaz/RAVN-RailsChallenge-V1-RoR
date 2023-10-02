Rails.application.routes.draw do
  devise_for :users

  # get '/pokemons', to: 'pokemons#index'
  # get '/pokemons/:id', to: 'pokemons#show'

  root 'overview#index'

  resources :pokemons
  resources :users

  get '/overview', to: 'overview#index'
end

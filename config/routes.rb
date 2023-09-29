Rails.application.routes.draw do
  get 'users/index'
  devise_for :users

  # get '/pokemons', to: 'pokemons#index'
  # get '/pokemons/:id', to: 'pokemons#show'

  # root 'pokemons#index'

  resources :pokemons
end

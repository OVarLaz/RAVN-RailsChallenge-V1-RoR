Rails.application.routes.draw do
  devise_for :users

  # get '/pokemons', to: 'pokemons#index'
  # get '/pokemons/:id', to: 'pokemons#show'

  root 'overview#index'

  resources :pokemons
  resources :users

  get '/overview', to: 'overview#index'

  # user_pokemons
  get '/my-pokemons', to: 'users#my_pokemons'
  post '/add-pokemon', to: 'users#add_pokemon'
  post '/remove-pokemon', to: 'users#remove_pokemon'
  get '/caught_pokemon', to: 'users#caught_pokemon'
end

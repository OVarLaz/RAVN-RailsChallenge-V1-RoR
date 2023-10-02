# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { admin: 0, trainer: 1 }

  has_many :user_pokemons
  has_many :pokemons, through: :user_pokemons

  def recent_pokemons
    pokemons.where('user_pokemons.created_at < ?', Time.now - 7.days)
  end

  def remove_pokemon(id:)
    user_pokemons.where(pokemon_id: id).first.destroy
  end

  def add_pokemon(new_pokemon_id:)
    UserPokemon.create(user_id: id, pokemon_id: new_pokemon_id)
  end
end

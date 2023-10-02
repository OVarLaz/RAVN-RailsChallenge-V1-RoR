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
end

# frozen_string_literal: true

class Pokemon < ApplicationRecord
  enum element_type: {
    Normal: 0,
    Fire: 1,
    Water: 2,
    Grass: 3,
    Electric: 4,
    Ice: 5,
    Fighting: 6,
    Poison: 7,
    Ground: 8,
    Flying: 9,
    Psychic: 10,
    Bug: 11,
    Rock: 12,
    Ghost: 13,
    Dragon: 14,
    Dark: 15,
    Steel: 16,
    Fairy: 17
  }

  has_many :user_pokemons
  has_many :users, through: :user_pokemons
end

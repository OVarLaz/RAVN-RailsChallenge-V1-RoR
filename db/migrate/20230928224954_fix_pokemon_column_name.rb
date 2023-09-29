class FixPokemonColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :pokemons, :type, :element_type
  end
end

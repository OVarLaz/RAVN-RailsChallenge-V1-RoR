class AddImageFieldToPokemonTable < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :image, :string
  end
end

class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :main_technique
      t.integer :type
      t.text :description

      t.timestamps
    end
  end
end

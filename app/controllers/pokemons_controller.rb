class PokemonsController < ApplicationController
  layout 'sidebar'
  before_action :find_by_id, only: %i[show edit update destroy]

  def index
    @pokemons = Pokemon.all
    authorize @pokemons
  end

  def show; end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      redirect_to @pokemon
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pokemon.destroy

    redirect_to pokemons_path, status: :see_other
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image, :main_technique, :element_type, :description)
  end

  def find_by_id
    @pokemon = Pokemon.find(params[:id])
  end
end

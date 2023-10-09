class UsersController < ApplicationController
  layout 'sidebar'
  before_action :find_by_id, only: %i[show edit update destroy]

  def index
    @users = if params[:search].present?
               User.where('lower(name) LIKE ?',
                          "%#{params[:search].downcase}%").order(params[:sort])
             else
               User.all.order(params[:sort])
             end
    authorize @users
  end

  def show
    @user_pokemons = @user.pokemons
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    authorize @user
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @user
    @user.destroy

    redirect_to users_path, status: :see_other
  end

  def my_pokemons; end

  def caught_pokemon
    @pokemons = Pokemon.all
  end

  def remove_pokemon
    current_user.remove_pokemon(id: params[:pokemon_id])

    redirect_to my_pokemons_path, status: :see_other
  end

  def add_pokemon
    current_user.add_pokemon(new_pokemon_id: params[:pokemon_id])

    redirect_to my_pokemons_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_by_id
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController
  before_action :find_by_id, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy

    redirect_to users_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_by_id
    @user = User.find(params[:id])
  end
end

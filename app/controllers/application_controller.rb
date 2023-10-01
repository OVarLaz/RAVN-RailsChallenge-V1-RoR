class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit::Authorization

  # handle redirect with devise gem
  def after_sign_in_path_for(_resource)
    return users_path if current_user.admin?

    pokemons_path
  end
end

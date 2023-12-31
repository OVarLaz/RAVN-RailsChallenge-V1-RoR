class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit::Authorization

  # handle redirect with devise gem
  def after_sign_in_path_for(_resource)
    root_path
  end
end

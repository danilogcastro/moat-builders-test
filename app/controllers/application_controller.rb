class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :username, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :username, :role])
  end
end

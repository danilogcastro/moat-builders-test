class ApplicationController < ActionController::Base
  include Pundit
  
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, except: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :full_name, :username, :role])

    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :full_name, :username, :role])
  end

  def stored_location_for(resource)
    nil
  end

  def after_sign_in_path_for(resource)
    artists_path
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end

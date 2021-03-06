class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include CanCan::ControllerAdditions
  
  protected
  def after_sign_in_path_for(resource)
    teams_path
  end

  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :post_code, :username, :team_images, :post_images, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :post_code, :username, :team_images, :post_images, :email, :password) }
  end
end

class ApplicationController < ActionController::Base

  def welcome
  end

  # protect_from_forgery with: :exception
  #
  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # protected
  # 
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name,:last_name, :email, :password) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name,:last_name, :email, :password) }
  # end

end

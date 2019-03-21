class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  ##M
  before_action :configure_permitted_parameters, if: :devise_controller?
  ##M
  protect_from_forgery with: :exception
  
  
  ##M adding userName to Registration from
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:userName])
  end
  ##M

end

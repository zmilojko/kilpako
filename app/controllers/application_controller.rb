class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    # sign in takes only email and password
    # devise_parameter_sanitizer.for(:sign_in) 
    # when signing up, or changing the account, name can also be set/changed
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
  def authenticate
    redirect_to :new_user_session if !user_signed_in?
  end
  
  def authenticate_admin
   # flash[:alert] = '관리자 권한이 없습니다.'
    redirect_to :root unless current_user.admin
  end
  
end

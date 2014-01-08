class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sing_up) {|u| u.permit(:username, :email, :password, :password_confirmation)}
  	
  end

  after_filter :store_location
def store_location
  session[:previous_urls] ||= []
  # store unique urls only
  session[:previous_urls].prepend request.fullpath if session[:previous_urls].first != request.fullpath
  # For Rails < 3.2
  # session[:previous_urls].unshift request.fullpath if session[:previous_urls].first != request.fullpath 
  session[:previous_urls].pop if session[:previous_urls].count > 2
end

  def after_sign_in_path_for(resource)
    session[:alunos_path] || alunos_path
end
  
 def login_required
    unless current_user
    redirect_to new_user_session_path, :alert => "You must first log in or sign up before accessing this page."
    end
  end
end

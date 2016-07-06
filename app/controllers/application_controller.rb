class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  check_authorization :unless => :do_not_check_authorization?
 private
  def do_not_check_authorization?
    respond_to?(:devise_controller?)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to welcomes_path, :alert => exception.message
  end
end

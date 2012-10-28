class ApplicationController < ActionController::Base
	before_filter :authenticate_user!
  protect_from_forgery
  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
end

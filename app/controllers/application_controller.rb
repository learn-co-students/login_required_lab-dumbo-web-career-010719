class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def hello
    redirect_to login_path if !session.has_key?(:name)
  end

  def current_user
    session[:name]
  end

  private
  def logged_in?
      return redirect_to login_path if current_user.nil? || current_user.empty?
  end
end

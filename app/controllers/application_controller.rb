class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def hello
  		if session[:name].nil?
    		redirect_to new_session_path 
  		end
  	end

   	def current_user
    	session[:name]
  	end

   	private

   	def require_logged_in
   		if current_user.nil?
    		redirect_to new_session_path
  		end
   	end

end

class SecretsController < ApplicationController
before_action :logged_in?
    def show
        
    end

    private

    def logged_in?
        return redirect_to login_path if current_user.nil? || current_user.empty?
    end
end
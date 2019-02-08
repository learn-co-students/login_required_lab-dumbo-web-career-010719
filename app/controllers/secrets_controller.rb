class SecretsController < ApplicationController
   
    def show
        if session[:name]==nil || session[:name].empty?
            redirect_to '/login'
        else
            render :show
        end
    end

    # private
    # def require_login
    #     return head(:forbidden) unless session.include?(current_user)
    # end
end
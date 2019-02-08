class SessionsController < ApplicationController
    # before_action :require_login
    # skip_before_action :require_login, only: [:index, :create]

    def index

    end

    def new
    end

    def create
        if params[:name] == nil || params[:name].empty?
            redirect_to session_new_path
        else
            session[:name]=params[:name]
            redirect_to root_path
        end
    end


    def destroy
        if current_user
         session.delete :name
        else
            session[:name]=nil
        end
        redirect_to '/'
    end

    private
    def require_login
        return head(:forbidden) unless session.include?(current_user)
    end

end
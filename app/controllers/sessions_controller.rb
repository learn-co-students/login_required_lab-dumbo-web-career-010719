class SessionsController < ApplicationController
  def new
    #code
  end

  def create
    #code
    if params[:name].nil? || params[:name].empty?
      redirect_to('/login')
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    #code
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to '/login'
  end
end

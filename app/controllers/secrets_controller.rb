class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show
    #code
  end

  private

  def require_login
    #code
    redirect_to('/login') unless session.include? :name
  end
end

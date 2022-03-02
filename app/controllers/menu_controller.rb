class MenuController < ApplicationController
  before_action :authenticate_user
  def index

  end
  #
  #
  def authenticate_user
    unless session[:userinfo].present?
      redirect_to '/login'
    end
  end
end

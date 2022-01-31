class SessionsController < ApplicationController
  before_action :authenticate_user
  def index

  end

  def authenticate_user
    if session[:userinfo].present?
      redirect_to '/menu'
  else
    redirect_to login_path, notice: "You need to log in"
    end
    end
end

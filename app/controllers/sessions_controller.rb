class SessionsController < ApplicationController
  before_action :authenticate_user
  def index

  end

  def authenticate_user
    if session[:userinfo].present?
      redirect_to '/menu'
      end
    end
end

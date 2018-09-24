class SessionsController < ApplicationController
  def create
    if session[:name].nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
end

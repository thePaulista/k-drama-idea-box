class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else flash.now[:user] = "Invalid email/password combination!"
      render :new
    end
  end

  def destroy
    session.clear
    flash.now[:notice] = "You've successfully signed out!"
    redirect_to root_url
  end
end

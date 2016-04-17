class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back, #{@user.username}!"
      redirect_to @user
    else
      flash.now[:alert] = "Invalid email/password combination!"
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "Successfully logged out!"
    redirect_to root_url
  end
end

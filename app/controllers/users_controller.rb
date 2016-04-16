class UsersController < ApplicationController
  # before_filter :authenticate

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash.now[:notice] = "Thanks for signing up!"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Account successfully updated!"
      redirect_to @user
    else
     render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:alert] = "Account succesfully deleted!"
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end

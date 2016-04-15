class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @uer = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Thanks for signing up!"
      redirect_to @user
    else
      flash[:notice] = "Try again"
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end


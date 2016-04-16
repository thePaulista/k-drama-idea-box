class UsersController < ApplicationController
  before_filter :authenticate

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Thanks for signing up!"
      redirect_to @user
    else
      render :new
    end
  end

  def show
   @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password_digest, :password_confirmation)
  end
end

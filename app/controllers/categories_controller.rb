class CategoriesController < ApplicationController
   before_action :require_signin, except: [:index, :show]
   before_action :require_admin, except: [:index, :show]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "New category created"
    else
      render :new
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: "Category edited"
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categorys_url, notice: "Category deleted"
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
   redirect_to root_url unless current_user.admin?
  end

end

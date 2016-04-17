class IdeasController < ApplicationController
  before_action :require_signin
 # before_action :correct_user, only: [:create, :update, :destroy]

  def index
   @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
   @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to @idea, notice: "Idea created!"
    else
      render :new
    end
  end

  def show
    @idea = Idea.find(params[:id])
    @categories = @idea.categories
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
      redirect_to @idea
    else
      render :edit
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to @idea
  end

  private
  def idea_params
    params.require(:idea).permit(:title, :description, category_ids: [])
  end

 # def correct_user
 #   @idea = current_user.ideas.find_by(id: params[:id])
 #   redirect_to root_url if @idea.nil?
 # end
end

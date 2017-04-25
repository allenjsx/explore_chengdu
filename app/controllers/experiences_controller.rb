class ExperiencesController < ApplicationController

  def index
    @experience = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
  end

  private

  def experience_params
    params.require(:experience).permit(:title,
                                       :city,
                                       :description,
                                       :category,
                                       :avg_rating,
                                       :ranking,
                                       :cost)
  end

end

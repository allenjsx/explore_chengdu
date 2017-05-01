class Guide::ExperiencesController < ApplicationController
  before_action :authenticate_user!

  def new
    @experience = Experience.new
  end

  def create
    @experience = current_user.experiences.create(experience_params)
  end

  def update
    @experience = Experience.find(params[:id])
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def destroy

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

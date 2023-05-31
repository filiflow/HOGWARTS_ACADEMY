class ActivitiesController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create]
  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.id = current_user
    @activity.save
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :theme, :price, :date, :summary, :description)
  end
end

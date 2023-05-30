class DashboardsController < ApplicationController
  def index
    @activities = Activity.where(user: current_user)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
    redirect_to dashboards_path
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :theme, :price, :date)
  end
end

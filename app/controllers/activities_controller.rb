class ActivitiesController < ApplicationController
  def index
    if params[:query].present?
      @activities = Activity.search_by_title_and_theme("%#{params[:query]}%")
    else
      @activities = Activity.all
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end

class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @activities = Activity.search_by_title_and_theme("%#{params[:query]}%")
    else
      @activities = Activity.all
    end

    respond_to do |format|
      format.html
      format.turbo_stream { render turbo_stream: turbo_stream.replace("activities", partial: "activities/activity", collection: @activities, as: :activity) }
    end

    # if turbo_frame_request?
    #   render partial: "activities", locals: { activities: @activities }
    # else
    #   render "index"
    # end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user_id = current_user.id
    @activity.save
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :theme, :price, :date, :summary, :description, :photo)
  end
end

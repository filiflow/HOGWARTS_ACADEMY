class ActivitiesController < ApplicationController
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
end

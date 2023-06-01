class BookingsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(activity_id: params[:activity_id], user: current_user)
    if @booking.save
      redirect_to dashboards_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboards_path
  end

end

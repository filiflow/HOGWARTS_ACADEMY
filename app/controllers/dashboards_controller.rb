class DashboardsController < ApplicationController
  def index
    @activities = Activity.where(user: current_user)
    @bookings = Booking.where(user_id: current_user)
  end
end

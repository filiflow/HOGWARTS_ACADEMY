class DashboardsController < ApplicationController
  def index
    @activities = Activity.where(user: current_user)
  end
end

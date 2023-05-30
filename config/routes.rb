Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"
  # get "activities/:id",   to: "activities#show"
  # get "activities/new",   to: "activities#new"
  # post "activites",       to: "activities#create"
  # get "bookings/new" to: "bookings#new"
  # post "bookings", to: "bookings#create"
  get "dashboards", to: "dahsboard#index"
end

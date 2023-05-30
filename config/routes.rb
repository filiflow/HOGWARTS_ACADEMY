Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"
  resources :activities, only: %i[show new create]
  # get "activities/:id",   to: "activities#show"
  # get "activities/new",   to: "activities#new"
  # post "activites",       to: "activities#create"
  # get "bookings/new" to: "bookings#new"
  # post "bookings", to: "bookings#create"
  get "dashboards", to: "dashboards#index"
end

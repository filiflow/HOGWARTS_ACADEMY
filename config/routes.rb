Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"
  resources :activities, only: %i[show new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :dashboards, only: %i[index]
  resources :bookings, only: %i[destroy]
end

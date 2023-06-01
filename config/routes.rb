Rails.application.routes.draw do
  devise_for :users
  root to: "activities#index"
  resources :activities, only: %i[show new create edit update destroy]
  resources :dashboards, only: %i[index]
end

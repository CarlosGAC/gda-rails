Rails.application.routes.draw do

  use_doorkeeper
  root 'welcome#index'

  resources :users

  resources :services

  resources :operators

  resources :trucks

  resources :assistances

  resources :map

  #============= API =============#
  namespace :api, defaults: {format:"json"} do
    resources :services, controller: :services, only: [:index]
  end

end

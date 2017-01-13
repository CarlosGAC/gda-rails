Rails.application.routes.draw do

  resources :users
  root 'welcome#index'

  resources :services

  resources :operators

  resources :trucks

  resources :assistances

  resources :map

  #============= API =============
  namespace :api, defaults: {format:"json"} do
    resources :services, controller: :services, only: [:index]
  end

end

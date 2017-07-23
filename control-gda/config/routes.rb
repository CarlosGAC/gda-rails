Rails.application.routes.draw do

  resources :routes
  root 'welcome#index'

  resources :users

  resources :services

  resources :operators

  resources :trucks

  resources :assistances

  resources :map

  resources :inventories
  
end

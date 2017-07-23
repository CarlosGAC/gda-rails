Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :services

  resources :operators

  resources :trucks

  resources :assistances

  resources :map

  resources :inventories

  resources :routes
end

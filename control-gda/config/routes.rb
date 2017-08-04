Rails.application.routes.draw do

  resources :calculators
  resources :prices
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

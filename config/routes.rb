Rails.application.routes.draw do
  resources :stations
  resources :buildings
  root 'buildings#index'
end

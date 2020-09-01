Rails.application.routes.draw do
  resources :buildings
  root 'buildings#index'
  resources :stations
end

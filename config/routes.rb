Rails.application.routes.draw do
  resources :buildings
  root 'buildings#index'
end

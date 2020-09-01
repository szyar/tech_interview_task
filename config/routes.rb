Rails.application.routes.draw do
  resources :buildings do
    resources :stations, controller: 'stations'
  end
  root 'buildings#index'
end

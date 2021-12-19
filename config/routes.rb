Rails.application.routes.draw do
  # get 'buildings/index'
  # get 'buildings/' => 'buildings#index'
  # post 'buildings/' => 'buildings#create'
  # get 'buildings/:id' => 'buildings#show'
  # get 'buildings/new'
  # get 'buildings/update'

  # get 'apartments/index'
  # get 'apartments/new'
  # get 'apartments/show'
  # get 'apartments/create'
  # get 'apartments/update'
  resources :apartments
  resources :buildings
  root "home#index"
end

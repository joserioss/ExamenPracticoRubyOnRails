Rails.application.routes.draw do
  get 'apartments/index'
  get 'apartments/new'
  get 'apartments/show'
  get 'apartments/create'
  get 'apartments/update'
  resources :buildings
  resources :apartments
end

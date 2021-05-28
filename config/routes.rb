Rails.application.routes.draw do

  resources :photos
  resources :highlights
  resources :participants
  resources :trips
  devise_for :users
  root "trips#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

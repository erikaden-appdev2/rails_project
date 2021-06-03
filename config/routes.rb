Rails.application.routes.draw do
  root "users#show"

  resources :photos
  resources :highlights
  resources :participants
  resources :trips
  devise_for :users
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get ":username" => "users#show", as: :user
end

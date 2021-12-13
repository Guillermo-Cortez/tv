Rails.application.routes.draw do
  devise_for :users
  resources :garment_host_broadcasts
  resources :broadcasts
  resources :hosts
  resources :garments
  resources :colours
  resources :brands
  resources :type_of_garments

  root 'broadcasts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

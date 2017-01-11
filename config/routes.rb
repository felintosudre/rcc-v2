Rails.application.routes.draw do

  root 'home#index'

  resources :addresses
  resources :inscriptions

  resources :teams
  resources :phones
  resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

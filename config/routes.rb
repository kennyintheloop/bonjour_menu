CsppMenu::Application.routes.draw do
  resources :soupdejours


  get "sign_in" => 'sessions#new', :as => :sign_in

  post "sessions/create"

  get "sessions/destroy" => 'sessions#destroy', :as => :sign_out

  get "help" => 'help#index', :as => :help
  get "admin" => 'admin#index', :as => :admin
  get "location" => 'location#index', :as => :location

  root to: 'dishes#index'

  resources :orders


  resources :reservations


  resources :users


  resources :dishes


end

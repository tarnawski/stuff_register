Rails.application.routes.draw do

  resources :fundings

  resources :types

  resources :calsses

  resources :stuffs

  devise_for :users

end

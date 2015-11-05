Rails.application.routes.draw do



root 'types#index'

  resources :types do
    resources :stuffs
  end

  resources :rooms  
  resources :stuffs
  resources :fundings
  resources :stuffs

  devise_for :users
end

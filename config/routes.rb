Rails.application.routes.draw do

root 'stuffs#index'

  resources :types do
    resources :stuffs
  end

  resources :calsses do 
    resources :stuffs
  end
  devise_for :users
  resources :fundings

end

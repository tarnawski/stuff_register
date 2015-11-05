Rails.application.routes.draw do



root 'stuffs#index'

  resources :types do
    resources :stuffs
  end

    resources :rooms do 
    resources :stuffs
  end
  devise_for :users
  resources :fundings

end

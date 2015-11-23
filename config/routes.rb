Rails.application.routes.draw do



  resources :inventories, only: [:new, :create]

root 'types#index'

  resources :types do
    resources :stuffs
  end

  resources :rooms  
  resources :stuffs
  resources :fundings
  resources :stuffs

  devise_for :users
  post 'raport' => 'stuffs#raport'
  get 'raport' => 'stuffs#raport'

  post 'catalog' => 'stuffs#catalog'
  get 'catalog' => 'stuffs#catalog'

end

Rails.application.routes.draw do

  devise_for :users
  resources :inventories, only: [:new, :create]

  root 'types#index'

  resources :types do
    resources :stuffs
  end

  resources :rooms  
  resources :stuffs
  resources :fundings
  resources :stuffs

  post 'raport' => 'stuffs#raport'
  get 'raport' => 'stuffs#raport'
  get 'pdfraport' => 'stuffs#pdfraport'

  post 'catalog' => 'stuffs#catalog'
  get 'catalog' => 'stuffs#catalog'

end

Rails.application.routes.draw do
  # get '/images', to: redirect('/')

  # get 'images/new'

  # post 'images/new', to: 'images#create'
  # post 'images', to: 'images#create'

  # get 'images/:imgID', to: 'images#show'
  # get 'images/show/:imgID', to: 'images#show'

  # delete 'images/:imgID', to: 'images#destroy'
  resources :images, only: [:index, :update, :new, :create, :show, :destroy]
  root 'images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '*path' => redirect('/')

end

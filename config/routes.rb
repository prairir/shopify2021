Rails.application.routes.draw do
  get '/images', to: redirect('/')

  resources :images, only: [:index, :update, :new, :create, :show, :destroy]
  root 'images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '*path' => redirect('/')

end

Rails.application.routes.draw do
  get '/images', to: redirect('/')
  get 'images/new'
  root 'images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '*path' => redirect('/')

end

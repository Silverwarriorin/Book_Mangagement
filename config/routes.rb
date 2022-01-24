Rails.application.routes.draw do
  resources :books
  resources :loans
  get 'menu/index'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'sessions#login'

  #User routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  #Sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#destroy'

  get '/menu', to: 'menu#index'
  get '/loans', to: 'loans#index'


end

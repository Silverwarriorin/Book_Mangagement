Rails.application.routes.draw do
  get 'contact/index'
  get 'error/index'
  get 'about/index'
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

  get '/books', to: 'books#index'

  get '/about', to: 'about#index'

  # ..
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'
  get '/auth/redirect' => 'auth0#redirect'

  get '/error', to: 'error#index'

  get '/contact' => 'contact#index'

  get '/booknew' => 'books#new'
end

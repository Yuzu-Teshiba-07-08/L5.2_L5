Rails.application.routes.draw do
  get 'tops/main'
  get 'tops/login'
  get 'tops/logout'
  # get 'tweets/index'
  get 'tweets/new'
  # get 'tweets/create'
  # get 'tweets/destory'
  get 'likes/create'
  get 'likes/destory'
  
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  get 'users/destroy'
  resources :users
  root 'users#index'
  resources :tweets
  #root 'tweets#index'
  post 'tops/login'
  get 'tops/logout'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

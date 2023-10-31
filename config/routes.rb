Rails.application.routes.draw do
  get 'tops/main'
  get 'tops/login'
  get 'tops/logout'
  root 'users#index'
  get 'users/destroy'
  resources :users
  resources :tweets
  get 'likes/create'
  get 'likes/destory'
  post 'tops/login'
  get 'tops/logout'
  # get 'tweets/index'
  # get 'tweets/create'
  # get 'tweets/destory'
  # get 'users/index'
  # get 'users/new'
  # get 'users/create'
  #root 'tweets#index'
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

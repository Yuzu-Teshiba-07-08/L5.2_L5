Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destory'
  get 'tweet/index'
  get 'tweet/new'
  get 'tweet/create'
  get 'tweet/destory'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  resources :user
  root 'users#index'
  resources :tweet
  root 'tweets#index'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

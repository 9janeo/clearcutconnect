Rails.application.routes.draw do
  resources :posts
  # root to: 'dashboard#index'

  # devise_for :users
  # post '/aws/auth',
  # 	to: 'users#aws_auth',
  # 	defaults: {format: 'json'},
  # 	as: 'aws_auth'
  	
	root 'dashboard#index'
  
  	# get 'dashboard/index'
	  resources :orders
	  resources :consultants
	  resources :services
	  resources :keywords
	  resources :estimates

  get 'estimates', to: 'estimates#index'


end
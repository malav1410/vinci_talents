Rails.application.routes.draw do  

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  	
  get '/search' => 'profiles#search'

	get '/profiles' => 'profiles#new'
	post '/profiles' => 'profiles#create'

	post '/profiles/submit' => 'profiles#submit'
	get '/profiles/thank_you' => 'profiles#submitted'

  get '/celebrity_management' => 'pages#celebrity_management'
  get '/talent_management' => 'pages#talent_management'
  get '/artist_management' => 'pages#artist_management'
  get '/event_management' => 'pages#event_management'
  get '/shoot_with_celebrity' => 'pages#shoot_with_celebrity'
  get '/holiday_with_celebrity' => 'pages#holiday_with_celebrity'
  get '/portfolio_shoot' => 'pages#portfolio_shoot'
  get '/modeling_acting_and_grooming_classes' => 'pages#modeling_acting_and_grooming_classes'
  get '/s_affairs' => 'pages#s_affairs'

  get 'welcome/index'  

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

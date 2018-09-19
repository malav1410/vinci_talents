Rails.application.routes.draw do  

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  	
	get '/profiles' => 'profiles#new'
	post '/profiles' => 'profiles#create'

	post '/profiles/submit' => 'profiles#submit'
	get '/profiles/thank_you' => 'profiles#submitted'

  get 'welcome/index'  

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

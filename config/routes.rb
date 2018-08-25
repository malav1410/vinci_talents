Rails.application.routes.draw do  

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	get '/profile/submit' => 'profile#create'

  get 'welcome/index'  

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

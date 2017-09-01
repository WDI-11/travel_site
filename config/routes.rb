Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 ##############################################
 # Set cities index page as route of the site #
 ##############################################
 
 
  root to: 'cities#index'
 
  ######################################
  # create route from cities to posts  #
  ######################################

  resources :cities, :posts do
    resources :posts
  end
  devise_for :users
end

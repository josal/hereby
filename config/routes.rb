Hereby::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users
  
  resources :messages
  
  root 'home#index'
end

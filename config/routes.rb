Hereby::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :messages
  
  root 'home#index'

end

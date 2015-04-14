Hereby::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users do
    get :follow, on: :member, as: :follow
  end
  
  resources :messages
  
  root 'home#index'
end

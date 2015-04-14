Hereby::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users do
    get :follow,    on: :member
    get :following, on: :member
    get :followed,  on: :member
    get :messages,  on: :member
  end

  resources :messages

  root 'home#index'
end

Hereby::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users do
    get :follow,    on: :member
    get :following, on: :member
    get :followers, on: :member
    get :messages,  on: :member
  end

  resources :messages

  root 'home#index'

  mount HerebyAPI => '/'

  # Capture the not existing API routes and return a decent JSON
  # http://stackoverflow.com/a/25079637/717506
  namespace :api, defaults: {format: :json} do
    match "*path", to: -> (env) { [404, {}, [{error: I18n.t('api.v1.not_found')}.to_json]] }, via: :all
  end

end

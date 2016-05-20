Rails.application.routes.draw do
  resources :newsletters
  resources :categories
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

 resources :movies do
    resources :reviews, except: [:show, :index]
    resources :videos
  end
  
  get    'top'   => 'movies#top_movies'
  get    'games'   => 'movies#games'
#resources :videos, only: [:index, :new, :create]

  root 'movies#index'
  devise_scope :user do
      get '/users/auth/:provider/upgrade' => 'omniauth_callbacks#upgrade', as: :user_omniauth_upgrade
      get '/users/auth/:provider/setup', :to => 'omniauth_callbacks#setup'
    end
end

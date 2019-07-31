Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tasks, only: [:index]
  resources :surveys, only: [:create, :index]
  resources :datasets, only: [:create, :show]
  post 'login', to: "users#login"
end

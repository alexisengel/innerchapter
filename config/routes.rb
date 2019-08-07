Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  resources :tasks, only: [:index]
  resources :surveys, only: [:create, :index]
  resources :datasets, only: [:create, :show]
  post 'login', to: "users#login"
  resources :users, only: [:show]
end

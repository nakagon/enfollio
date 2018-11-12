Rails.application.routes.draw do

  devise_for :users
  root 'toppages#index'

  resources :users, only: [:show, :edit , :index]
  resources :profiles, only: [:create , :update]
  resources :skills , only: [:create]
  resources :works , only: [:create]
  resources :user_links , only: [:create]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

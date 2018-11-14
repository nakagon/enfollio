Rails.application.routes.draw do

  devise_for :users
  root 'toppages#index'

  resources :users, only: [:show, :edit , :index] do 
    get 'follow', :on => :member
  end
  resources :profiles, only: [:create , :update]
  resources :skills , only: [:create]
  resources :works , only: [:create]
  resources :user_links , only: [:create]
  resources :likes , only: [:create] do
    delete '', to: 'likes#destroy', as: :delete , on: :collection
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

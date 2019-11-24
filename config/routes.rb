Rails.application.routes.draw do
  devise_for :users
  resources :selection, only: [:show]
  resources :measurement, only: [:show, :create] 
  get 'pages/index'
  root 'pages#index'
   namespace :page do
    resources :styles, only: [:new, :create, :show]
      resources :styles, only: [:new, :create]
       resources :pages, only: [:new, :create]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 #get 'pages/about'
 #get 'pages/home'
 #get 'pages/contact'
end
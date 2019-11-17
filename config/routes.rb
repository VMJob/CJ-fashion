Rails.application.routes.draw do
  devise_for :users
  resources :selection, only: [:show]
  get 'pages/index'
  root 'pages#index'
   resources :styles, only: [:new, :create, :show] do
    resources :styles, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 #get 'pages/about'
 #get 'pages/home'
 #get 'pages/contact'
end
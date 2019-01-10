Rails.application.routes.draw do
  root 'stories#index'  
  devise_for :users
  resources :notes
  resources :stories
  resources :pirates, only: [:index, :show, :destroy]
end

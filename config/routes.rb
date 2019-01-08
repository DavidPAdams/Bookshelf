Rails.application.routes.draw do
  devise_for :users
  resources :notes
  root 'stories#index'
  resources :stories
  resources :pirates, only: [:index, :show, :destroy]
end

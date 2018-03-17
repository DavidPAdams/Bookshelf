Rails.application.routes.draw do
  devise_for :users
  resources :notes
  root 'stories#index'
  resources :stories
end

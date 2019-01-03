Rails.application.routes.draw do
  get 'pirates/index_users'

  get 'pirates/show_user'

  devise_for :users
  resources :notes
  root 'stories#index'
  resources :stories
end

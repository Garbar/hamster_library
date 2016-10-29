Rails.application.routes.draw do
  resources :stories do

  end
  resources :authors
  resources :famdoms
  devise_for :users
  root 'stories#index'
end

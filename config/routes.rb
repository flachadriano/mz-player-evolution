Rails.application.routes.draw do

  devise_for :users

  resources :players
  resources :import, only: [:index, :update]

  root 'players#index'
end

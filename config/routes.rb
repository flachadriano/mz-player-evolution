Rails.application.routes.draw do
  resources :player_data

  resources :players

  devise_for :users

  root 'players#index'
end

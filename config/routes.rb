Rails.application.routes.draw do

  devise_for :users

  resources :players

  resources :import, only: [:new] do
  	put :import_data, on: :collection
  end

  root 'players#index'
end

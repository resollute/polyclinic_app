# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :categories do
    resources :users do
      # post "/expenses", to: "users#share_data"
      # post '/share_data', to: 'users_controller#share_data', as: 'share_data'
    end
  end

  resources :users, only: %i[] do
    get :profile
  end

end

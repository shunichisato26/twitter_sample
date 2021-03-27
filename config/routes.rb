Rails.application.routes.draw do

  root 'tweets#index'

  devise_for :users

  resources :users, only: [:index, :show]
  resources :tweets, only: [:index, :show, :create] do
    resources :likes, only: [:create, :destroy]
  end

end

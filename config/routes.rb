Rails.application.routes.draw do

  get 'likes/create'
  get 'likes/destroy'
  root 'tweets#index'

  devise_for :users
  resources :users
  resources :tweets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

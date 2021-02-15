Rails.application.routes.draw do
  devise_for :user
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
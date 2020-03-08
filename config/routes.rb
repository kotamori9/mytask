Rails.application.routes.draw do
  devise_for :users

  root "tasks#index"

  resources :users, only: [:edit, :update, :destroy]
  resources :tasks, only: [:index,:new,:create,:destroy,:show] 
  
end

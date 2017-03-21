Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new'

  devise_for :users 
  resources :boats
  resources :jobs
  resources :pairings



  get 'sessions/new'

  get 'home/index'

  root 'users#index'

  patch "/boats", to: "boats#update"

  # post "/jobs", to: "jobs#create"


end

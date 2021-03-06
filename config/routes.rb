Rails.application.routes.draw do
  root 'welcome#index'
  resources :plants
  resources :members
  resources :plots
  resources :gardens
  get 'garden/index'

  get "/login", to: "sessions#login", as: "login"
  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/logout", to: "sessions#destroy"

  get "/signup", to: "members#new"
  post "/signup", to: "members#create"

  # post "/login", to: "sessions#create"
  # post "/logout", to: "sessions#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

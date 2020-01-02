Rails.application.routes.draw do
  root 'welcome#index'
  resources :plants
  resources :members
  resources :plots
  resources :gardens
  get 'garden/index'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

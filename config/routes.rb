Rails.application.routes.draw do
  resources :plants
  resources :members
  resources :plots
  resources :gardens
  get 'garden/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

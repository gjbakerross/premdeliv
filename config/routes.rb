Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'export_users', to: 'users#export_users'

  root 'users#index'
end

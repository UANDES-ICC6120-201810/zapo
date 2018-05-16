Rails.application.routes.draw do
  mount API::Base, at: "/"
  devise_for :users
  resources :access_points
  resources :file_to_updates
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

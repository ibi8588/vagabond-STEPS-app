Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "site#index"
  resources :users
  resources :cities
  resources :posts
end

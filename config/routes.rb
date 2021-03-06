Rails.application.routes.draw do
  devise_for :users
  get 'users/new'
  get 'homepage/index'

  resources :posts do
    resources :comments
  end

  resources :users

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

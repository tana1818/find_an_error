Rails.application.routes.draw do

  devise_for :users
  root 'issue#index'
  resources :issue, only:[:index]
  resources :user

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

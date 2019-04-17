Rails.application.routes.draw do

  devise_for :users
  root 'issue#index'
  resources :user
  resources :group, only: [:new, :create, :edit, :update] do
    resources :issue
    resources :category, only: [:new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

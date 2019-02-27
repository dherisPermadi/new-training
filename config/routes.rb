Rails.application.routes.draw do
  devise_for :users
  resources :homeworks
  resources :categories
  get 'welcome/index'
  root 'welcome#index'
end

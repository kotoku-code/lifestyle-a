
Rails.application.routes.draw do
  resources :groups
  devise_for :users
  resources :links
  root 'links#index'
end

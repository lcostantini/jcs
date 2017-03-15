Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/jcs', as: 'rails_admin'
  resources :items
  devise_for :admins
  resources :providers
  resources :dispatches
  resources :biddings
  resources :clients

  root to: "rails_admin/main#dashboard"
end

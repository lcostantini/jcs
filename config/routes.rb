Rails.application.routes.draw do
  devise_for :admins
  resources :providers
  resources :dispatches
  resources :biddings
  resources :clients

  root to: "biddings#index"
end

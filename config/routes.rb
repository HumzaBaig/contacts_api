Rails.application.routes.draw do
  resources :users, only: [:create, :index, :destroy, :show, :update] do
    resources :contacts, only: [:index]
    resources :comments, only: [:index]
  end
  resources :contacts, only: [:create, :destroy, :show, :update] do
    resources :comments, only: [:index]
  end
  resources :contact_shares, only: [:create, :index, :destroy]
  resources :comments, only: [:index, :create, :destroy]
  root 'users#index'
end

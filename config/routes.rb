Rails.application.routes.draw do
  get 'sessions/new'
  post 'sessions/create' 
  get 'sessions/destroy'
  get "/" , to:'static#index', as: 'home'
  resources :product_orders, only: [:create, :show, :destroy, :update], as: :cart 
  resources :products, only: [:index, :show]
  resources :reviews, only: [:create]
  resources :orders, only: [:show, :update]
  resources :customers, only:[:show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "/" , to:'static#index', as: 'home'
  resources :product_orders
  resources :products, only: [:index, :show]
  resources :reviews
  resources :orders
  resources :customers, only:[:show, :new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'pages#index'
  get 'search', to: 'pages#search', as: :search
  resources :products, only: :show
  namespace :admin do
    resources :exceptions, only: [:index, :show]
  end
end

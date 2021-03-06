Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :events do
    resources :users, only: :booking
    resources :bookings, only: [:new, :create, :index, :destroy]
  end
  resources :bookings, only: [:index]
  resources :users, only: :show
    # resources :bookings, only: [:new, :create, :index, :destroy]
  # resources :bookings, only: [:new, :create, :index, :destroy]

  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings', to: 'bookings#index'
  # get 'events', to: 'events#index'
  # post 'events/create', to: 'events#create'
  # get 'events/new', to: 'events#new'
  # get 'events/show'

  # devise_for :users
  # root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

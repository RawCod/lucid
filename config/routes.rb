Rails.application.routes.draw do

  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/index'
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

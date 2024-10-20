Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/show'
  get 'locations/index'
  get 'concierges/index'
  get 'categories/index'
  get 'guests/index'
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"
  get "/concierge" => "pages#concierge_home"
  # Defines the root path route ("/")
  # root "posts#index"
  # resources :restaurant_bookings, only: [:index, :new, :create, :show]
  resources :restaurants, only: [:index, :show]
  resources :categories, only: [:index]
  resources :guests, only: [:index, :show]
  resources :locations, only: [:index]
  resources :tasks, only: [:index, :show, :new, :create, :destroy]

  resources :restaurants, only: [:index] do
    resources :bookings, only: [:index, :new, :create, :show]
  end
end

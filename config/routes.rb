Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :reports
  get 'home/about'
  get 'home/profile'
  get 'home/livemap'
  root "home#index"
  get 'trips/trip'
  get 'trips/buddy'
  get 'trips/fakecall'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

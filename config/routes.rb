Rails.application.routes.draw do
  resources :materials
  resources :cities
  resources :maintenances
  resources :motors
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

end

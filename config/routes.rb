Rails.application.routes.draw do
  resources :books
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      post "/login", to: "sessions#login"
      post "/register", to: "users#register"
      resources :books, only: [:index, :show, :create, :edit, :destroy]
    end
  end
end

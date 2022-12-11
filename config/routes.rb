Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :students, only: [:index, :create, :show, :update, :destroy] do
    resources :transactions, only: [:index, :create, :show]    
  end
  
  resources :instructors, only: [:index, :create, :show, :update, :destroy]
  resources :schedules, only: [:index, :create, :show, :update, :destroy]
  resources :courses, only: [:index, :create, :show, :update, :destroy]
  resources :subjects, only: [:index, :create, :show, :update, :destroy]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "users#create"
  get "/me", to: "users#show"

end

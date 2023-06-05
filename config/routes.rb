Rails.application.routes.draw do
  resources :users, only: [:create, :update, :index]

  post "/login", to: "sessions#create"
  get "/logged_in", to: "sessions#autologin"
  
end

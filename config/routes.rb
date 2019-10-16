Rails.application.routes.draw do
  root "top#index"
  get "/messages", to: "messages#index", as: :messages
  post "/messages", to: "messages#create"
  get "/messages/new", to: "messages#new", as: :new_message

  get "/login", to: "sessions#new", as: :login
  post "/session", to: "sessions#create", as: :session
  delete "/session", to: "sessions#destroy"

  get "/users", to: "users#index", as: :users
end

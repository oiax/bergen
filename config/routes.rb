Rails.application.routes.draw do
  root "top#index"
  get "/messages", to: "messages#index", as: :messages
  post "/messages", to: "messages#create"
  get "/messages/new", to: "messages#new", as: :new_message
  delete "/messages/:id", to: "messages#destroy", as: :message

  post "/messages/:message_id/favors", to: "favors#create", as: :favors
  delete "/messages/:message_id/favors", to: "favors#destroy"

  get "/login", to: "sessions#new", as: :login
  post "/session", to: "sessions#create", as: :session
  delete "/session", to: "sessions#destroy"

  get "/account", to: "accounts#show", as: :account
  patch "/account", to: "accounts#update"
  get "/account/edit", to: "accounts#edit", as: :edit_account

  get "/users", to: "users#index", as: :users
  get "/users/:id", to: "users#show", as: :user

  post "/users/:id/relationships", to: "relationships#create", as: :user_relationships
  delete "/users/:id/relationships", to: "relationships#destroy"

  get "/api/favors/count", to: "api/favors#count", as: :api_favors_count
end

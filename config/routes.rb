Rails.application.routes.draw do
  root "top#index"
  get "/messages", to: "messages#index", as: :messages
  post "/messages", to: "messages#create"
  get "/messages/new", to: "messages#new", as: :new_message
end

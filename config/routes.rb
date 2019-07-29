Rails.application.routes.draw do
  root "top#index"
  get "/messages", to: "messages#index", as: :messages
end

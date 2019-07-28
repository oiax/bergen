Rails.application.routes.draw do
  get "/", to: "top#index", as: :root
end

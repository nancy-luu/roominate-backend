Rails.application.routes.draw do
  resources :reviews, only:[:index, :create, :destroy]
  resources :user_reviews, only:[:create, :destroy]
  resources :messages, only:[:index, :create, :destroy] 
  resources :conversations, #all routes
  resources :user_conversations, only:[:create, :destroy] 
  resources :listings #all routes
  resources :users #all routes


  # for user authentication
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
 
end

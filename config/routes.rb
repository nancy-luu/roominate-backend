Rails.application.routes.draw do
  resources :reviews
  resources :user_reviews
  resources :messages
  resources :conversations
  resources :user_conversations
  resources :listings
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

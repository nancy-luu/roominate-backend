Rails.application.routes.draw do
  resources :reviews, only:[:index, :create, :destroy]
  resources :user_reviews, only:[:create, :destroy]
  resources :messages, only:[:index, :create, :destroy] 
  resources :conversations, #all routes
  resources :user_conversations, only:[:create, :destroy] 
  resources :listings #all routes
  resources :users #all routes
 
end

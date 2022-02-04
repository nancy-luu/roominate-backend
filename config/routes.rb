Rails.application.routes.draw do
  resources :users #all routes
  resources :user_photos, only:[:index, :show, :create]

  resources :listings #all routes
  resources :listing_photos, only:[:index, :show, :create]

  resources :reviews, only:[:index, :create, :destroy]
  resources :user_reviews, only:[:create, :destroy]

  resources :messages, only:[:index, :create, :destroy] 
  resources :conversations, only:[:index, :show, :create, :destroy] 
  resources :user_conversations, only:[:create, :destroy] 


  # for user authentication
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  get "/userphoto", to: "userphotos#show"
  post '/photos', to: 'photos#create'
  
  
  get '/listing/:id', to: 'listings#show'

  
  get '/conversations' to: 'conversation#index'

end

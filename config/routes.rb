Rails.application.routes.draw do
  resources :users
  resources :user_photos, only:[:show, :create, :update]

  resources :listings #all routes
  resources :listing_photos, only:[:show, :create, :update]

  resources :reviews, only:[:show, :create, :destroy]
  resources :user_reviews, only:[:show, :create, :destroy]

  resources :messages, only:[:index, :show, :create, :destroy] 
  resources :conversations, only:[:index, :show, :create, :destroy] 

  # for user authentication
  get '/profile', to: 'users#profile'
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  # get "/user_is_authed", to: "auth#user_is_authed"
  post "/signup", to: 'users#create'  

  # update user photo explicitly
  patch "/updateuserphoto", to: 'user_photos#update'
end

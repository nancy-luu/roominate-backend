Rails.application.routes.draw do
  resources :users #all routes
  resources :user_photos, only:[:show, :create, :update]

  resources :listings #all routes
  resources :listing_photos, only:[:show, :create, :update]

  resources :reviews, only:[:show, :create, :destroy]
  resources :user_reviews, only:[:show, :create, :destroy]

  resources :messages, only:[:index, :show, :create, :destroy] 
  resources :conversations, only:[:index, :show, :create, :destroy] 

  # for user authentication
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  post "/signup", to: 'users#create'  

  #featured
  get "/featured_users", to: "users#featured_users"
  get "/featured_listings", to: "listings#featured_listings"


  #associate listing photo with listing when new listing created
  post "/listing_photos/:id", to: "listing_photos#create"

end

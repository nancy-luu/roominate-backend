Rails.application.routes.draw do
  resources :invoices
  resources :users #all routes
  resources :user_photos, only:[:index, :show, :create, :update]

  resources :listings #all routes
  resources :listing_photos, only:[:show, :create, :update]

  resources :reviews, only:[:show, :create, :destroy]
  resources :user_reviews, only:[:show, :create, :destroy]

  resources :messages, only:[:index, :show, :create, :destroy] 
  resources :conversations, only:[:index, :create, :destroy] 

  resources :invoices, only:[:index, :create, :destroy] 


  # for user authentication
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  post "/signup", to: 'users#create'  

  #featured
  get "/featured_users", to: "users#featured_users"
  get "/featured_listings", to: "listings#featured_listings"

  #associate listing photo with listing when new listing created
  post "/listing_photos/:id", to: "listing_photos#create"

  #show message count
  get "/message_count/:id", to: "conversations#message_count"

  #find only conversations that could includes current user
  get "my_conversations", to: "conversations#my_conversations"

  #pay invoice and switch boolean
  get "/my_invoices", to: "invoices#my_invoices"
  patch "/pay_invoice/:id", to: "invoices#pay_invoice"
  get "/my_invoices_total", to: "invoices#my_invoices_total"

end

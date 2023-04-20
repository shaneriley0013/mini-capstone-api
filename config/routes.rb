


Rails.application.routes.draw do

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"


  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  
  
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  patch "/orders/:id" => "orders#update"
  delete "/orders/:id" => "orders#destroy"
  
  
  post "/sessions" => "sessions#create"
  
  post "/carted_products" => "carted_products#create"
  
  get "/carted_products" => "carted_products#index"


end





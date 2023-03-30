


Rails.application.routes.draw do

  get "/products" => "products#index"

  get "/product/:id" => "products#show"

  get "/first_product/" => "products#first"
  
  get "/last_product/" => "products#last"

  

end


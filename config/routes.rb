





Rails.application.routes.draw do

  get "/one_product/:id" => "products#singular"

  get "/first_product/" => "products#first"
  
  get "/last_product/" => "products#last"

  get "/all_products" => "products#index"

end

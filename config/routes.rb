





Rails.application.routes.draw do
  
  get "/one_product" => "products#show"

  get "/all_products" => "products#index"

end

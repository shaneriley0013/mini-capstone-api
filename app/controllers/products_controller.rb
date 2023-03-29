class ProductsController < ApplicationController


  def show
    @product = Product.first   
    render template: "products/show"
  end

  def all
    @products = Product.all
    render template: "products/index"
  end
  
  
  
  
  
  
  
  
end

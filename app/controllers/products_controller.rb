class ProductsController < ApplicationController


  def first
    @product = Product.first   
    render template: "products/show"
  end

  def last
    @product = Product.last
    render template: "products/show"
  end

  def index
    @products = Product.all
    render template: "products/index"
  end
  
  
  def singular
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end  

    
  
  
  
end

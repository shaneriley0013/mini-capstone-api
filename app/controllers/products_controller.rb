class ProductsController < ApplicationController


  def show
    @product = Product.first   
    render template: "products/show"
  end

  def show
    @product = Product.last
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

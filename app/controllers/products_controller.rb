class ProductsController < ApplicationController


    def index
    @products = Product.all
    render :index
  end
  
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end 
  
  # def first
  #   @product = Product.first   
  #   render :show
  # end

  # def last
  #   @product = Product.last
  #   render :show
  # end

end



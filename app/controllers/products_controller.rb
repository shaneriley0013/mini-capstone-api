class ProductsController < ApplicationController


  # def first
  #   @product = Product.first   
  #   render :show
  # end

  # def last
  #   @product = Product.last
  #   render :show
  # end

  def index
    @products = Product.all
    render :index
  end
  
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end  

end



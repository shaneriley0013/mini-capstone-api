



class CartedProductsController < ApplicationController

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      order_id: nil,
      status: "carted",
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    @carted_product.save
    render :show
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = "removed"
    render json: {message: "Product has been successfully removed"}
  end

end


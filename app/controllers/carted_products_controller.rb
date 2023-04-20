



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
    #@carted_products = CartedProduct.all
  end

end


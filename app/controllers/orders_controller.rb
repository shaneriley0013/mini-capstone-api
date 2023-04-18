

class OrdersController < ApplicationController
  #before_action :authenticate_user, except: [:index]
  
  
  def index
    @orders = current_user.orders
    render :index
  end


  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)    
    render :show
  end

  
  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    if @order.save
      render :show
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end


  def destroy
    @order = Order.find_by(id: params[:id])
    @order.destroy
    render json: {message: "Order has been successfully removed"}
  end


end

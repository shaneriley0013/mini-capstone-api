
class ProductsController < ApplicationController
  #before_action :authenticate_admin, except: [:index, :show]

  def index
    
    @products = Product.all
    if current_user
      render :index
    else
      render json: {message: "You are not logged in! Denied"}, status: :unauthorized
    end
  end



  
  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end
  
  


  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      description: params[:description],
      invetory_count: params[:invetory_count],
      foreign_id: params[:foreign_id]      
    )

    if @product.save!
      @image = Image.new(
        url: params[:image_url],
        product_id: @product.id
      )
      @image.save!
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

  end



  
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.invetory_count = params[:invetory_count] || @product.invetory_count
    @product.foreign_id = params[:foreign_id] || @product.foreign_id
        
    
    if @product.save
      @image = Image.new(
        url: params[:image_url],
        product_id: @product.id
      )
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end




  
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product has been successfully removed"}
  end



end





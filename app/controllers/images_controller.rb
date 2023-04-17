class ImagesController < ApplicationController

  def update
    def update
      @image = Image.find_by(id: params[:id])
      @image.update(
        url: params["name"] || @image.url,
        
      )
      render :show
    end
    
    
    if @product.save
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end


end

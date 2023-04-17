class ImagesController < ApplicationController

  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params[:id])
    render :show
  end

  def create
    @image = Image.new(
      url: url = params[:url],
      product_id: product_id = params[:product_id]
    )
    @image.save
    render :show
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.url = params[:url] || @image.url
    @image.product_id = params[:product_id] || @image.product_id

    @image.save
    render :show
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    @image.destroy
    render json: {message: "Image as been destroyed successfully"}
  end

end
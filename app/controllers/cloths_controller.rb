class ClothsController < ApplicationController
  def index
  	@cloths = Cloth.all
  end

  def show
  	@cloth = Cloth.find(params[:id])
  end

  def new
  	@cloth = Cloth.new
  end

  def create
  	@cloth = Cloth.new(cloth_params)
  	@cloth.photo = params[:cloth]["photo"].read
  	@cloth.photo_name = params[:cloth]["photo"].original_filename
  	@cloth.save!
  	redirect_to @cloth
  end

  def edit
  	@cloth = Cloth.find(params[:id])
  end

  def update
  	@cloth = Cloth.find(params[:id])
  	@cloth.save!
  	redirect_to @cloth
  end

  def destroy
  	@cloth = Cloth.find(params[:id])
  	@cloth.destroy
  	redirect_to cloths_url
  end

  def send_img
    tmpbin = Cloth.find(params[:id])
    if (1 <= tmpbin.photo.size)
    send_data(tmpbin.photo, :type => 'image/jpeg', :disposition => 'inline')
    end
  end

  private
  def cloth_params
 	 params.require(:cloth).permit(:photo, :category, :color)
  end


end

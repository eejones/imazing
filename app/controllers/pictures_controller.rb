class PicturesController < ApplicationController

  def new
    @picture = Picture.new(:product_id => params[:product_id])
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "Successfully created picture."
      redirect_to @picture.product
    else
      render :action => 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(picture_params)
      flash[:notice] = "Successfully updated picture."
      redirect_to @picture.product
    else
      render :action => 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "Successfully destroyed picture."
    redirect_to @picture.product
  end

  private

    def picture_params
      params.require(:picture).permit(:product_id, :primary, :primaryimage, :image, :name)
    end

end

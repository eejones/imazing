class ModtypemanufacturersController < ApplicationController

  def create
    @manufacturer = Manufacturer.find(params[:modtypemanufacturer][:manufacturer_id])
    @modtype = Modtype.find(params[:modtypemanufacturer][:modtype_id])
    @modtypemanufacturer = @modtype.modtypemanufacturers.create(:manufacturer_id => @manufacturer.id)
    if @modtypemanufacturer.save
      respond_to do |format|
        format.html { redirect_to [@modtypemanufacturer.modtype.producttype, @modtype] }
        format.json { head :no_content }
      end
    else
      flash[:error] = "Unable to join."
      redirect_to :back
    end
 
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:modtypemanufacturer][:manufacturer_id])
    @modtype = Modtype.find(params[:modtypemanufacturer][:modtype_id])
    @modtype.removemanufacturer!(@manufacturer)
    redirect_to [@modtype.producttype, @modtype]
  end
end

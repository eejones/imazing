module DynamicSelect

  class ManufacturersController < ApplicationController
    respond_to :json

    def indexfilter
      #using a left join to avoid the overhead of having to load all modtypes to view if there is a modtypemanufacturers connection. This is a pretty fast one now
      @manufacturers = Manufacturer.joins("LEFT JOIN `modtypemanufacturers` ON `modtypemanufacturers`.`manufacturer_id` = `manufacturers`.`id`").where(:modtypemanufacturers => {:modtype_id => params[:modtype_id]})
      respond_with(@manufacturers)
    end

    def allfilter
      @manufacturers = @products.where((:modality_id||nil) == 'modality_id').where(:modtype_id||nil) == 'modtype_id')
    end
  end
end


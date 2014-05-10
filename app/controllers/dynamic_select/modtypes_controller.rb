module DynamicSelect

  class ModtypesController < ApplicationController
    respond_to :json

    def indexfilter
      @modtypes = Modtype.where(:modality_id => params[:modality_id])
      respond_with(@modtypes)
    end
  end
end


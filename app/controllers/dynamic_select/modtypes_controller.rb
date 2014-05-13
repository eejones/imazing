module DynamicSelect

  class ModtypesController < ApplicationController
    respond_to :json

    def indexfilter
      if :modality_id != nil
        @modtypes = Modtype.where(:modality_id => params[:modality_id])
      else
        @modtypes = Modtype.all
      end
      respond_with(@modtypes)
    end
  end
end

class ModtypesController < ApplicationController
  before_action :set_modtype, only: [:show, :edit, :update, :destroy]

  # GET /modtypes
  # GET /modtypes.json
  def index
    @modtypes = Modtype.all
  end

  # GET /modtypes/1
  # GET /modtypes/1.json
  def show
  end

  # GET /modtypes/new
  def new
    @modtype = Modtype.new
  end

  # GET /modtypes/1/edit
  def edit
  end

  # POST /modtypes
  # POST /modtypes.json
  def create
    @modtype = Modtype.new(modtype_params)

    respond_to do |format|
      if @modtype.save
        format.html { redirect_to @modtype, notice: 'Modtype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @modtype }
      else
        format.html { render action: 'new' }
        format.json { render json: @modtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modtypes/1
  # PATCH/PUT /modtypes/1.json
  def update
    respond_to do |format|
      if @modtype.update(modtype_params)
        format.html { redirect_to @modtype, notice: 'Modtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @modtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modtypes/1
  # DELETE /modtypes/1.json
  def destroy
    @modtype.destroy
    respond_to do |format|
      format.html { redirect_to modtypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modtype
      @modtype = Modtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modtype_params
      params.require(:modtype).permit(:name, :manufacturer_id, :modality_id)
    end
end

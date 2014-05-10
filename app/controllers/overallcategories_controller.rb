class OverallcategoriesController < ApplicationController
  before_action :set_overallcategory, only: [:show, :edit, :update, :destroy]

  # GET /overallcategories
  # GET /overallcategories.json
  def index
    @overallcategories = Overallcategory.all
  end

  # GET /overallcategories/1
  # GET /overallcategories/1.json
  def show
  end

  # GET /overallcategories/new
  def new
    @overallcategory = Overallcategory.new
  end

  # GET /overallcategories/1/edit
  def edit
  end

  # POST /overallcategories
  # POST /overallcategories.json
  def create
    @overallcategory = Overallcategory.new(overallcategory_params)

    respond_to do |format|
      if @overallcategory.save
        format.html { redirect_to @overallcategory, notice: 'Overallcategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @overallcategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @overallcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /overallcategories/1
  # PATCH/PUT /overallcategories/1.json
  def update
    respond_to do |format|
      if @overallcategory.update(overallcategory_params)
        format.html { redirect_to @overallcategory, notice: 'Overallcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @overallcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overallcategories/1
  # DELETE /overallcategories/1.json
  def destroy
    @overallcategory.destroy
    respond_to do |format|
      format.html { redirect_to overallcategories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_overallcategory
      @overallcategory = Overallcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def overallcategory_params
      params.require(:overallcategory).permit(:name, :product_id)
    end
end

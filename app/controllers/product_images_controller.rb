class ProductImagesController < ApplicationController
  before_action :set_product_image, only: [:show, :edit, :update, :destroy]

  # GET /product_images
  # GET /product_images.json
  def index
    @product_images = ProductImage.all
    render :json => @product_images.collect { |p| p.to_jq_upload }.to_json
  end


  # GET /product_images/1
  # GET /product_images/1.json
  def show
  end

  # GET /product_images/new
  def new
    @product_image = ProductImage.new
  end

  # GET /product_images/1/edit
  def edit
  end

  # POST /product_images
  # POST /product_images.json
  def create
    @product_image = ProductImage.new(product_image_params)
    if @product_image.save
      respond_to do |format|
        format.html {  
          render :json => [@product_image.to_jq_upload].to_json, 
          :content_type => 'text/html',
          :layout => false
        }
        format.json {  
          render :json => [@product_image.to_jq_upload].to_json           
        }
      end
    else 
      render :json => [{:error => "custom_failure"}], :status => 304
    end
  end
=begin
    respond_to do |format|
      if @product_image.save
        format.html { redirect_to @product_image, notice: 'Product image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /product_images/1
  # PATCH/PUT /product_images/1.json
  def update
    respond_to do |format|
      if @product_image.update(product_image_params)
        format.html { redirect_to @product_image, notice: 'Product image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_images/1
  # DELETE /product_images/1.json
  def destroy
    @product_image = Product_image.find(params:id])
    @product_image.destroy
    render :json => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_image
      @product_image = ProductImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_image_params
      params.require(:product_image).permit(:image, :name, :product_id, :isprimary, :remote_image_url)
    end
end

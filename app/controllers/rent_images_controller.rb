class RentImagesController < ApplicationController
  before_action :set_rent_image, only: [:show, :edit, :update, :destroy]

  # GET /rent_images
  # GET /rent_images.json
  def index
    @rent_images = RentImage.all
  end

  # GET /rent_images/1
  # GET /rent_images/1.json
  def show
  end

  # GET /rent_images/new
  def new
    @rent_image = RentImage.new
  end

  # GET /rent_images/1/edit
  def edit
  end

  # POST /rent_images
  # POST /rent_images.json
  def create
    @rent_image = RentImage.new(rent_image_params)

    respond_to do |format|
      if @rent_image.save
        format.html { redirect_to @rent_image, notice: 'Rent image was successfully created.' }
        format.json { render :show, status: :created, location: @rent_image }
      else
        format.html { render :new }
        format.json { render json: @rent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rent_images/1
  # PATCH/PUT /rent_images/1.json
  def update
    respond_to do |format|
      if @rent_image.update(rent_image_params)
        format.html { redirect_to @rent_image, notice: 'Rent image was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_image }
      else
        format.html { render :edit }
        format.json { render json: @rent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_images/1
  # DELETE /rent_images/1.json
  def destroy
    id = @rent_image.rent_id
    @rent_image.destroy
    respond_to do |format|
      format.html { redirect_to "/rents/gallery/"+id.to_s, notice: 'Rent image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_image
      @rent_image = RentImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_image_params
      params.fetch(:rent_image, {})
    end
end

class TourImagesController < ApplicationController
  before_action :set_tour_image, only: [:show, :edit, :update, :destroy]

  # GET /tour_images
  # GET /tour_images.json
  def index
    @tour_images = TourImage.all
  end

  # GET /tour_images/1
  # GET /tour_images/1.json
  def show
  end

  # GET /tour_images/new
  def new
    @tour_image = TourImage.new
  end

  # GET /tour_images/1/edit
  def edit
  end

  # POST /tour_images
  # POST /tour_images.json
  def create
    @tour_image = TourImage.new(tour_image_params)

    respond_to do |format|
      if @tour_image.save
        format.html { redirect_to @tour_image, notice: 'Tour image was successfully created.' }
        format.json { render :show, status: :created, location: @tour_image }
      else
        format.html { render :new }
        format.json { render json: @tour_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_images/1
  # PATCH/PUT /tour_images/1.json
  def update
    respond_to do |format|
      if @tour_image.update(tour_image_params)
        format.html { redirect_to @tour_image, notice: 'Tour image was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_image }
      else
        format.html { render :edit }
        format.json { render json: @tour_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_images/1
  # DELETE /tour_images/1.json
  def destroy
    id = @tour_image.tour_service_id
    @tour_image.destroy
    respond_to do |format|
      format.html { redirect_to "/tour_services/" + id.to_s, notice: 'Tour image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_image
      @tour_image = TourImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_image_params
      params.fetch(:tour_image, {})
    end
end

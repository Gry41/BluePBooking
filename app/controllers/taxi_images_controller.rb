class TaxiImagesController < ApplicationController
  before_action :set_taxi_image, only: [:show, :edit, :update, :destroy]

  # GET /taxi_images
  # GET /taxi_images.json
  def index
    @taxi_images = TaxiImage.all
  end

  # GET /taxi_images/1
  # GET /taxi_images/1.json
  def show
  end

  # GET /taxi_images/new
  def new
    @taxi_image = TaxiImage.new
  end

  # GET /taxi_images/1/edit
  def edit
  end

  # POST /taxi_images
  # POST /taxi_images.json
  def create
    @taxi_image = TaxiImage.new(taxi_image_params)

    respond_to do |format|
      if @taxi_image.save
        format.html { redirect_to @taxi_image, notice: 'Taxi image was successfully created.' }
        format.json { render :show, status: :created, location: @taxi_image }
      else
        format.html { render :new }
        format.json { render json: @taxi_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxi_images/1
  # PATCH/PUT /taxi_images/1.json
  def update
    respond_to do |format|
      if @taxi_image.update(taxi_image_params)
        format.html { redirect_to @taxi_image, notice: 'Taxi image was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxi_image }
      else
        format.html { render :edit }
        format.json { render json: @taxi_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxi_images/1
  # DELETE /taxi_images/1.json
  def destroy
    id = @taxi_image.taxi_sevice_id
    @taxi_image.destroy
    respond_to do |format|
      format.html { redirect_to "/taxi_sevices/" + id.to_s, notice: 'Taxi image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxi_image
      @taxi_image = TaxiImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxi_image_params
      params.fetch(:taxi_image, {})
    end
end

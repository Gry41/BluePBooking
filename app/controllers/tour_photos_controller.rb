class TourPhotosController < ApplicationController
  before_action :set_tour_photo, only: [:show, :edit, :update, :destroy]

  # GET /tour_photos
  # GET /tour_photos.json
  def index
    @tour_photos = TourPhoto.all
  end

  # GET /tour_photos/1
  # GET /tour_photos/1.json
  def show
  end

  # GET /tour_photos/new
  def new
    @tour_photo = TourPhoto.new
  end

  # GET /tour_photos/1/edit
  def edit
  end

  def gallery
    @pictures = TourPhoto.all
    puts "-------------------------------------------------------------------"
    puts @pictures 
    render "gallery.html.erb"
  end

  # POST /tour_photos
  # POST /tour_photos.json
  def create
    # @taxi_photo = TaxiPhoto.new(taxi_photo_params)

    if params[:image]
      puts params[:image]
      params[:image].each { |image|
        @tour_photo = TourPhoto.new(image:image)
        @tour_photo.save
      }
      
    end
    redirect_to "/tour_photos/gallery"
  end

  # PATCH/PUT /tour_photos/1
  # PATCH/PUT /tour_photos/1.json
  def update
    respond_to do |format|
      if @tour_photo.update(tour_photo_params)
        format.html { redirect_to @tour_photo, notice: 'Tour photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_photo }
      else
        format.html { render :edit }
        format.json { render json: @tour_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_photos/1
  # DELETE /tour_photos/1.json
  def destroy
    @tour_photo.destroy
    respond_to do |format|
      format.html { redirect_to "/tour_photos/gallery", notice: 'Tour photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_photo
      @tour_photo = TourPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_photo_params
      params.fetch(:tour_photo, {})
    end
end

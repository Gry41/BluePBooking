class TaxiPhotosController < ApplicationController
  before_action :set_taxi_photo, only: [:show, :edit, :update, :destroy]

  # GET /taxi_photos
  # GET /taxi_photos.json
  def index
    @taxi_photos = TaxiPhoto.all
  end

  # GET /taxi_photos/1
  # GET /taxi_photos/1.json
  def show
  end

  # GET /taxi_photos/new
  def new
    @taxi_photo = TaxiPhoto.new
  end

  # GET /taxi_photos/1/edit
  def edit
  end

  def gallery
    @pictures = TaxiPhoto.all
    puts "-------------------------------------------------------------------"
    puts @pictures 
    render "gallery.html.erb"
  end

  # POST /taxi_photos
  # POST /taxi_photos.json
  def create
    # @taxi_photo = TaxiPhoto.new(taxi_photo_params)

    if params[:image]
      puts params[:image]
      params[:image].each { |image|
        @taxi_photo = TaxiPhoto.new(image:image)
        @taxi_photo.save
      }
      
    end
    redirect_to "/taxi_photos/gallery"
    # respond_to do |format|
    #   if @taxi_photo.save

        

    #     format.html { redirect_to @taxi_photo, notice: 'Taxi photo was successfully created.' }
    #     format.json { render :show, status: :created, location: @taxi_photo }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @taxi_photo.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /taxi_photos/1
  # PATCH/PUT /taxi_photos/1.json
  def update
    respond_to do |format|
      if @taxi_photo.update(taxi_photo_params)
        format.html { redirect_to @taxi_photo, notice: 'Taxi photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxi_photo }
      else
        format.html { render :edit }
        format.json { render json: @taxi_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxi_photos/1
  # DELETE /taxi_photos/1.json
  def destroy
    @taxi_photo.destroy
    respond_to do |format|
      format.html { redirect_to "/taxi_photos/gallery", notice: 'Taxi photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxi_photo
      @taxi_photo = TaxiPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxi_photo_params
      params.fetch(:taxi_photo, {})
    end
end

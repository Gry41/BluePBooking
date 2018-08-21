class TourServicesController < ApplicationController
  before_action :set_tour_service, only: [:show, :edit, :update, :destroy]

  # GET /tour_services
  # GET /tour_services.json
  def index
    @photos = TourPhoto.all
    @tour_services = TourService.all
  end

  # GET /tour_services/1
  # GET /tour_services/1.json
  def show
    @pictures = TourService.find(params[:id]).tour_images
    # render :show
  end

  # GET /tour_services/new
  def new
    @tour_service = TourService.new
  end

  # GET /tour_services/1/edit
  def edit
  end

  # POST /tour_services
  # POST /tour_services.json
  def create
    @tour_service = TourService.new(tour_service_params)

    respond_to do |format|
      if @tour_service.save

        format.html { redirect_to action:"index" }
        format.json { render :show, status: :created, location: @tour_service }
      else
        format.html { render :new }
        format.json { render json: @tour_service.errors, status: :unprocessable_entity }
      end
    end
  end

  def mail
    inf = params[:information]
    mail = inf
    
    TourMailer.tour_email(mail).deliver_now
    redirect_to action:"index"
  end

  # PATCH/PUT /tour_services/1
  # PATCH/PUT /tour_services/1.json
  def update
    respond_to do |format|
      if @tour_service.update(tour_service_params)

        format.html { redirect_to action:"index" }
        format.json { render :show, status: :ok, location: @tour_service }
      else
        format.html { render :edit }
        format.json { render json: @tour_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_services/1
  # DELETE /tour_services/1.json
  def destroy
    @tour_service.destroy
    respond_to do |format|
      format.html { redirect_to tour_services_url, notice: 'Tour service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_service
      @tour_service = TourService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_service_params
      params.require(:tour_service).permit(:name, :price, :description)
    end
end

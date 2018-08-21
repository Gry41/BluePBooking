class TaxiSevicesController < ApplicationController
  before_action :set_taxi_sevice, only: [:show, :edit, :update, :destroy]

  # GET /taxi_sevices
  # GET /taxi_sevices.json
  def index
    @photos = TaxiPhoto.all
    puts "------------------------------------------------"
    puts @photos
    @taxi_sevices = TaxiSevice.all
    @information = {}
  end
  def mail
    inf = params[:information]
    mail = inf
   
    TaxiMailer.taxi_email(mail).deliver_now
    redirect_to action:"index"
  end


  # GET /taxi_sevices/1
  # GET /taxi_sevices/1.json
  def show
    @pictures = TaxiSevice.find(params[:id]).taxi_images
  end

  # GET /taxi_sevices/new
  def new
    @taxi_sevice = TaxiSevice.new
  end

  # GET /taxi_sevices/1/edit
  def edit
  end

  # POST /taxi_sevices
  # POST /taxi_sevices.json
  def create
    @taxi_sevice = TaxiSevice.new(taxi_sevice_params)

    respond_to do |format|
      if @taxi_sevice.save
        format.html { redirect_to action: "index" }
      else
        format.html { render :new }
        format.json { render json: @taxi_sevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxi_sevices/1
  # PATCH/PUT /taxi_sevices/1.json
  def update
    respond_to do |format|
      if @taxi_sevice.update(taxi_sevice_params)
        format.html { redirect_to action: "index" }
        format.json { render :show, status: :ok, location: @taxi_sevice }
      else
        format.html { render :edit }
        format.json { render json: @taxi_sevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxi_sevices/1
  # DELETE /taxi_sevices/1.json
  def destroy
    @taxi_sevice.destroy
    respond_to do |format|
      format.html { redirect_to taxi_sevices_url, notice: 'Taxi sevice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxi_sevice
      @taxi_sevice = TaxiSevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxi_sevice_params
      params.require(:taxi_sevice).permit(:name, :price)
    end
end

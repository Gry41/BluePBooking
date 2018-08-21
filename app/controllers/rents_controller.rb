class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]
  

  # GET /rents
  # GET /rents.json
  def index
    @title = "Rent"
    @rnt = Rent.new
    @rents = Rent.paginate(page:params[:page],per_page:12).all
  end

  def home
    @rnt = Rent.new
    @rents = Rent.order('visits DESC') 
    @rents = @rents.limit(8)
    render 'home.html.erb'
  end  
  def mail
    inf = params[:information]
    mail = inf
    
    puts(mail)
    puts "maillllllllllllllllllllllllllllllllllllllllll"
    puts params
    MailerMailer.rent_email(mail).deliver_now
    redirect_to action:"index"
  end
  def mail_us
    inf = params[:information]
    mail = inf

    SendUsMailer.us_email(mail).deliver_now
    redirect_to action:"home"
  end
  def gallery
    @pictures = Rent.find(params[:id]).rent_images
    # @first = pictures.first.image.url
    render 'gallery.html.erb'
  end

  # GET /rents/1
  # GET /rents/1.json
  def show
    @information = {}
    rent  = Rent.find(params[:id])
    y = rent.visits
    y = y + 1
    rent.visits = y
    rent.save

  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  def all_points
    @points = Rent.all
    render json: @points
  end

  # POST /rents
  # POST /rents.json
  def create
    @rent = Rent.new(rent_params)
    @rentpar = rent_params
    respond_to do |format|
      if @rent.save

        if params[:image]
          puts params[:image]
          params[:image].each { |image|
            @rent.rent_images.create(rent_id: @rent.id, image:image)
          }
          
        end

        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render :show, status: :created, location: @rent }
      else
        format.html { render :new }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rents/1
  # PATCH/PUT /rents/1.json
  def update
    respond_to do |format|
      if @rent.update(rent_params)

        if params[:image]
          puts params[:image]
          params[:image].each { |image|
            @rent.rent_images.create(rent_id: @rent.id, image:image)
          }
          
        end
        
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent }
      else
        format.html { render :edit }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rents/1
  # DELETE /rents/1.json
  def destroy
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url, notice: 'Rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def query
  
    puts params
    
    @rents = Rent.all
    rnt = params[:rnt]
    if rnt[:location_id]!= ""
      puts '--------------------------------'
      @rents = @rents.where(location_id: rnt[:location_id])
    end
    strbath = "bathrooms >= "+ rnt[:bathrooms]
    @rents = @rents.where(strbath)
    stroom = "rooms >= "+ rnt[:rooms]
    @rents = @rents.where(stroom)  
    stprice = "dbl_price <= "+ rnt[:dbl_price]
    @rents = @rents.where(stprice)                                   
    @rnt = Rent.new
    @rents = @rents.paginate(page:params[:page],per_page:12).all
    render 'index.html.erb'
  end

  
  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_params
      params.require(:rent).permit(:name, :address, :rooms, :bathrooms, :dbl_price, :tpl_price, :qpl_price, :home, :X, :Y, :features, :tripadvisor,:location_id,:language_ids=>[],:facility_ids=>[],:service_ids=>[])
    end
end

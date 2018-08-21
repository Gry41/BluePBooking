class CartypesController < ApplicationController
  before_action :set_cartype, only: [:show, :edit, :update, :destroy]

  # GET /cartypes
  # GET /cartypes.json
  def index
    @cartypes = Cartype.all
  end

  # GET /cartypes/1
  # GET /cartypes/1.json
  def show
  end

  # GET /cartypes/new
  def new
    @cartype = Cartype.new
  end

  # GET /cartypes/1/edit
  def edit
  end

  # POST /cartypes
  # POST /cartypes.json
  def create
    @cartype = Cartype.new(cartype_params)

    respond_to do |format|
      if @cartype.save
        format.html { redirect_to action:"index" }
        format.json { render :show, status: :created, location: @cartype }
      else
        format.html { render :new }
        format.json { render json: @cartype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartypes/1
  # PATCH/PUT /cartypes/1.json
  def update
    respond_to do |format|
      if @cartype.update(cartype_params)
        format.html { redirect_to action:"index" }
        format.json { render :show, status: :ok, location: @cartype }
      else
        format.html { render :edit }
        format.json { render json: @cartype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartypes/1
  # DELETE /cartypes/1.json
  def destroy
    @cartype.destroy
    respond_to do |format|
      format.html { redirect_to cartypes_url, notice: 'Cartype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartype
      @cartype = Cartype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartype_params
      params.require(:cartype).permit(:name)
    end
end

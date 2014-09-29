class HealthcaresController < ApplicationController
  before_action :set_healthcare, only: [:show, :edit, :update, :destroy]

  # GET /healthcares
  # GET /healthcares.json
  def index
if params[:search].present?
    @healthcares = Healthcare.near(params[:search], 50) 
    
    else
     @healthcares = Healthcare.all
    end
      @hash = Gmaps4rails.build_markers(@healthcares) do |healthcare, marker|
      marker.lat healthcare.latitude
      marker.lng healthcare.longitude
      marker.infowindow healthcare.site
    end    end

  # GET /healthcares/1
  # GET /healthcares/1.json
  def show
  end

  # GET /healthcares/new
  def new
    @healthcare = Healthcare.new
  end

  # GET /healthcares/1/edit
  def edit
  end

  # POST /healthcares
  # POST /healthcares.json
  def create
    @healthcare = Healthcare.new(healthcare_params)

    respond_to do |format|
      if @healthcare.save
        format.html { redirect_to @healthcare, notice: 'Healthcare was successfully created.' }
        format.json { render :show, status: :created, location: @healthcare }
      else
        format.html { render :new }
        format.json { render json: @healthcare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthcares/1
  # PATCH/PUT /healthcares/1.json
  def update
    respond_to do |format|
      if @healthcare.update(healthcare_params)
        format.html { redirect_to @healthcare, notice: 'Healthcare was successfully updated.' }
        format.json { render :show, status: :ok, location: @healthcare }
      else
        format.html { render :edit }
        format.json { render json: @healthcare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthcares/1
  # DELETE /healthcares/1.json
  def destroy
    @healthcare.destroy
    respond_to do |format|
      format.html { redirect_to healthcares_url, notice: 'Healthcare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthcare
      @healthcare = Healthcare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthcare_params
      params.require(:healthcare).permit(:address, :latitude, :longitude, :site)
    end
end

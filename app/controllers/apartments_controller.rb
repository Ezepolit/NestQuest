class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_broker!, except: [:index,:show]
  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all
    @neighborhood = Neighborhood.all
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
  end

  # GET /apartments/new
  def new
    @apartment = Apartment.new
    @brokers = Broker.all
  end

  # GET /apartments/1/edit
  def edit
    
    # devise:
    #   sessions:
    #     user:
    #       EditApartments: 'You can not edit apartments that you are not an Agent On.'
    #     broker:
    #       EditApartments: 'Edit has been enabled'
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = Apartment.new(apartment_params)

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to @apartment, notice: 'Apartment was successfully created.' }
        format.json { render :show, status: :created, location: @apartment }
      else
        format.html { render :new }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/1
  # PATCH/PUT /apartments/1.json
  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.html { render :edit }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url, notice: 'Apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_params
      params.require(:apartment).permit(:title, :image, :neighborhood, :price, :bedrooms, :bathrooms, :description, :move_date, :broker_id, apartment_photos_attributes: [:id, :apartment_id, :photos])
    end
end

class ApartmentShowingsController < ApplicationController
  before_action :set_apartment_showing, only: [:show, :edit, :update, :destroy]

  # GET /apartment_showings
  # GET /apartment_showings.json
  def index
    @apartment_showings = ApartmentShowing.all
  end

  # GET /apartment_showings/1
  # GET /apartment_showings/1.json
  def show
  end

  # GET /apartment_showings/new
  def new
    @apartment_showing = ApartmentShowing.new
  end

  # GET /apartment_showings/1/edit
  def edit
  end

  # POST /apartment_showings
  # POST /apartment_showings.json
  def create
    @apartment_showing = ApartmentShowing.new(apartment_showing_params)

    respond_to do |format|
      if @apartment_showing.save
        format.html { redirect_to @apartment_showing, notice: 'Apartment showing was successfully created.' }
        format.json { render :show, status: :created, location: @apartment_showing }
      else
        format.html { render :new }
        format.json { render json: @apartment_showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_showings/1
  # PATCH/PUT /apartment_showings/1.json
  def update
    respond_to do |format|
      if @apartment_showing.update(apartment_showing_params)
        format.html { redirect_to @apartment_showing, notice: 'Apartment showing was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment_showing }
      else
        format.html { render :edit }
        format.json { render json: @apartment_showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_showings/1
  # DELETE /apartment_showings/1.json
  def destroy
    @apartment_showing.destroy
    respond_to do |format|
      format.html { redirect_to apartment_showings_url, notice: 'Apartment showing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_showing
      @apartment_showing = ApartmentShowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_showing_params
      params.require(:apartment_showing).permit(:apartment_id, :showing_id)
    end
end

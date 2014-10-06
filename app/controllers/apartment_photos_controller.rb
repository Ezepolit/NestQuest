class ApartmentPhotosController < ApplicationController
  before_action :set_apartment_photo, only: [:show, :edit, :update, :destroy]

  # GET /apartment_photos
  # GET /apartment_photos.json
  def index
    @apartment_photos = ApartmentPhoto.all
  end

  # GET /apartment_photos/1
  # GET /apartment_photos/1.json
  def show
  end

  # GET /apartment_photos/new
  def new
    @apartment_photo = ApartmentPhoto.new
  end

  # GET /apartment_photos/1/edit
  def edit
  end

  # POST /apartment_photos
  # POST /apartment_photos.json
  def create
    @apartment_photo = ApartmentPhoto.new(apartment_photo_params)

    respond_to do |format|
      if @apartment_photo.save
        format.html { redirect_to @apartment_photo, notice: 'Apartment photo was successfully created.' }
        format.json { render :show, status: :created, location: @apartment_photo }
      else
        format.html { render :new }
        format.json { render json: @apartment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_photos/1
  # PATCH/PUT /apartment_photos/1.json
  def update
    respond_to do |format|
      if @apartment_photo.update(apartment_photo_params)
        format.html { redirect_to @apartment_photo, notice: 'Apartment photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartment_photo }
      else
        format.html { render :edit }
        format.json { render json: @apartment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_photos/1
  # DELETE /apartment_photos/1.json
  def destroy
    @apartment_photo.destroy
    respond_to do |format|
      format.html { redirect_to apartment_photos_url, notice: 'Apartment photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_photo
      @apartment_photo = ApartmentPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_photo_params
      params.require(:apartment_photo).permit(:apartment_id, :photos)
    end
end

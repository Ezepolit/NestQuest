class ShowingsController < ApplicationController
  before_action :authenticate_broker!, except: [:show, :index]
  before_action :set_showing, only: [:show, :edit, :update, :destroy]

  # GET /showings
  # GET /showings.json
  def index
    @showings = Showing.search(params[:search])
    #@neighborhood = Neighborhood.all
  end

  # GET /showings/1
  # GET /showings/1.json
  def show
    @showing_user = ShowingUser.new
    # if user_signed_in?

    #   @showing_user = ShowingUser.new({showing_id: @showing.id, user_id: current_user.id})
    # else
    #   @showing_user = nil
    # end

    @broker = @showing.broker
  end

  # GET /showings/new
  def new
    @showing = Showing.new
  end

  # GET /showings/1/edit
  def edit
  end

  # POST /showings
  # POST /showings.json
  def create
    @showing = Showing.new(showing_params)
    @showing.broker = current_broker
    # @apartmentShowing = Apartment_showing.new(showing_params)

    respond_to do |format|
      if @showing.save
        format.html { redirect_to @showing, notice: 'Showing was successfully created.' }
        format.json { render :show, status: :created, location: @showing }
      else
        format.html { render :new }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showings/1
  # PATCH/PUT /showings/1.json
  def update

    # @apartmentShowing = Apartment_showing.find(@showing)


    respond_to do |format|
      if @showing.update(showing_params)
        format.html { redirect_to @showing, notice: 'Showing was successfully updated.' }
        format.json { render :show, status: :ok, location: @showing }
      else
        format.html { render :edit }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showings/1
  # DELETE /showings/1.json
  def destroy
    @showing.destroy
    respond_to do |format|
      format.html { redirect_to showings_url, notice: 'Showing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showing
      @showing = Showing.find(params[:id])
      #@showing = current_broker.showings.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showing_params
      params.require(:showing).permit(:date, :time, :Found_Nest_Bonus, :duration, :location, :details, :image, :geocoverage, :neighborhoods, :bedroom, :lower_price_range, :upper_price_range, apartment_ids: [])
    end
end

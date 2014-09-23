class ShowingUsersController < ApplicationController
  before_action :set_showing_user, only: [:show, :edit, :update, :destroy]

  # GET /showing_users
  # GET /showing_users.json
  def index
    @showing_users = ShowingUser.all
  end

  # GET /showing_users/1
  # GET /showing_users/1.json
  def show
  end

  # GET /showing_users/new
  def n
    @showing_user = ShowingUser.new
  end

  # GET /showing_users/1/edit
  def edit
  end

  # POST /showing_users
  # POST /showing_users.json
  def create
    @showing_user = ShowingUser.new(showing_user_params)

    respond_to do |format|
      if @showing_user.save
        format.html { redirect_to @showing_user, notice: 'Showing user was successfully created.' }
        format.json { render :show, status: :created, location: @showing_user }
      else
        format.html { render :new }
        format.json { render json: @showing_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showing_users/1
  # PATCH/PUT /showing_users/1.json
  def update
    respond_to do |format|
      if @showing_user.update(showing_user_params)

        format.html { redirect_to @showing_user, notice: 'Showing user was successfully updated.' }
        format.json { render :show, status: :ok, location: @showing_user }
      else
        format.html { render :edit }
        format.json { render json: @showing_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showing_users/1
  # DELETE /showing_users/1.json
  def destroy
    @showing_user.destroy
    respond_to do |format|
      format.html { redirect_to showing_users_url, notice: 'Showing user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showing_user
      @showing_user = ShowingUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def showing_user_params
      params.require(:showing_user).permit(:user_id, :showing_id)
    end
end

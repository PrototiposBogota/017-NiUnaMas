class HelpCentersController < ApplicationController
  before_action :set_help_center, only: [:show, :edit, :update, :destroy]

  # GET /help_centers
  # GET /help_centers.json
  def index
    @help_centers = HelpCenter.all
  end

  # GET /help_centers/1
  # GET /help_centers/1.json
  def show
  end

  # GET /help_centers/new
  def new
    @help_center = HelpCenter.new
  end

  # GET /help_centers/1/edit
  def edit
  end

  # POST /help_centers
  # POST /help_centers.json
  def create
    @help_center = HelpCenter.new(help_center_params)

    respond_to do |format|
      if @help_center.save
        format.html { redirect_to @help_center, notice: 'Help center was successfully created.' }
        format.json { render :show, status: :created, location: @help_center }
      else
        format.html { render :new }
        format.json { render json: @help_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_centers/1
  # PATCH/PUT /help_centers/1.json
  def update
    respond_to do |format|
      if @help_center.update(help_center_params)
        format.html { redirect_to @help_center, notice: 'Help center was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_center }
      else
        format.html { render :edit }
        format.json { render json: @help_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_centers/1
  # DELETE /help_centers/1.json
  def destroy
    @help_center.destroy
    respond_to do |format|
      format.html { redirect_to help_centers_url, notice: 'Help center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_center
      @help_center = HelpCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_center_params
      params.require(:help_center).permit(:name, :latitude, :longitude, :phone_number, :picture, :schedule, :address)
    end
end

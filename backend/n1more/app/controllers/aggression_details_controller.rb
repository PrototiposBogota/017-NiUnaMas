class AggressionDetailsController < ApplicationController
  before_action :set_aggression_detail, only: [:show, :edit, :update, :destroy]

  # GET /aggression_details
  # GET /aggression_details.json
  def index
    @aggression_details = AggressionDetail.all
  end

  # GET /aggression_details/1
  # GET /aggression_details/1.json
  def show
  end

  # GET /aggression_details/new
  def new
    @aggression_detail = AggressionDetail.new
  end

  # GET /aggression_details/1/edit
  def edit
  end

  # POST /aggression_details
  # POST /aggression_details.json
  def create
    @aggression_detail = AggressionDetail.new(aggression_detail_params)

    respond_to do |format|
      if @aggression_detail.save
        format.html { redirect_to @aggression_detail, notice: 'Aggression detail was successfully created.' }
        format.json { render :show, status: :created, location: @aggression_detail }
      else
        format.html { render :new }
        format.json { render json: @aggression_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aggression_details/1
  # PATCH/PUT /aggression_details/1.json
  def update
    respond_to do |format|
      if @aggression_detail.update(aggression_detail_params)
        format.html { redirect_to @aggression_detail, notice: 'Aggression detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @aggression_detail }
      else
        format.html { render :edit }
        format.json { render json: @aggression_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggression_details/1
  # DELETE /aggression_details/1.json
  def destroy
    @aggression_detail.destroy
    respond_to do |format|
      format.html { redirect_to aggression_details_url, notice: 'Aggression detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aggression_detail
      @aggression_detail = AggressionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aggression_detail_params
      params.require(:aggression_detail).permit(:victim_id, :aggression_date, :aggression_time, :mechanism, :scene, :proof_file, :latitude_report, :longitude_report)
    end
end

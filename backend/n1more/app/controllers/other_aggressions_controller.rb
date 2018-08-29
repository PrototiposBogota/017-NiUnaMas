class OtherAggressionsController < ApplicationController
  before_action :set_other_aggression, only: [:show, :edit, :update, :destroy]

  # GET /other_aggressions
  # GET /other_aggressions.json
  def index
    @other_aggressions = OtherAggression.all
  end

  # GET /other_aggressions/1
  # GET /other_aggressions/1.json
  def show
  end

  # GET /other_aggressions/new
  def new
    @other_aggression = OtherAggression.new
  end

  # GET /other_aggressions/1/edit
  def edit
  end

  # POST /other_aggressions
  # POST /other_aggressions.json
  def create
    @other_aggression = OtherAggression.new(other_aggression_params)

    respond_to do |format|
      if @other_aggression.save
        format.html { redirect_to @other_aggression, notice: 'Other aggression was successfully created.' }
        format.json { render :show, status: :created, location: @other_aggression }
      else
        format.html { render :new }
        format.json { render json: @other_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_aggressions/1
  # PATCH/PUT /other_aggressions/1.json
  def update
    respond_to do |format|
      if @other_aggression.update(other_aggression_params)
        format.html { redirect_to @other_aggression, notice: 'Other aggression was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_aggression }
      else
        format.html { render :edit }
        format.json { render json: @other_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_aggressions/1
  # DELETE /other_aggressions/1.json
  def destroy
    @other_aggression.destroy
    respond_to do |format|
      format.html { redirect_to other_aggressions_url, notice: 'Other aggression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_aggression
      @other_aggression = OtherAggression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_aggression_params
      params.require(:other_aggression).permit(:aggression_detail_id, :name, :description)
    end
end

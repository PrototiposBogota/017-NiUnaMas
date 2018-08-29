class SexualAggressionsController < ApplicationController
  before_action :set_sexual_aggression, only: [:show, :edit, :update, :destroy]

  # GET /sexual_aggressions
  # GET /sexual_aggressions.json
  def index
    @sexual_aggressions = SexualAggression.all
  end

  # GET /sexual_aggressions/1
  # GET /sexual_aggressions/1.json
  def show
  end

  # GET /sexual_aggressions/new
  def new
    @sexual_aggression = SexualAggression.new
  end

  # GET /sexual_aggressions/1/edit
  def edit
  end

  # POST /sexual_aggressions
  # POST /sexual_aggressions.json
  def create
    @sexual_aggression = SexualAggression.new(sexual_aggression_params)

    respond_to do |format|
      if @sexual_aggression.save
        format.html { redirect_to @sexual_aggression, notice: 'Sexual aggression was successfully created.' }
        format.json { render :show, status: :created, location: @sexual_aggression }
      else
        format.html { render :new }
        format.json { render json: @sexual_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexual_aggressions/1
  # PATCH/PUT /sexual_aggressions/1.json
  def update
    respond_to do |format|
      if @sexual_aggression.update(sexual_aggression_params)
        format.html { redirect_to @sexual_aggression, notice: 'Sexual aggression was successfully updated.' }
        format.json { render :show, status: :ok, location: @sexual_aggression }
      else
        format.html { render :edit }
        format.json { render json: @sexual_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexual_aggressions/1
  # DELETE /sexual_aggressions/1.json
  def destroy
    @sexual_aggression.destroy
    respond_to do |format|
      format.html { redirect_to sexual_aggressions_url, notice: 'Sexual aggression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sexual_aggression
      @sexual_aggression = SexualAggression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sexual_aggression_params
      params.require(:sexual_aggression).permit(:aggression_detail_id, :name, :description)
    end
end

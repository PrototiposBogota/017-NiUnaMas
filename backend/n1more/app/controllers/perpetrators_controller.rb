class PerpetratorsController < ApplicationController
  before_action :set_perpetrator, only: [:show, :edit, :update, :destroy]

  # GET /perpetrators
  # GET /perpetrators.json
  def index
    @perpetrators = Perpetrator.all
  end

  # GET /perpetrators/1
  # GET /perpetrators/1.json
  def show
  end

  # GET /perpetrators/new
  def new
    @perpetrator = Perpetrator.new
  end

  # GET /perpetrators/1/edit
  def edit
  end

  # POST /perpetrators
  # POST /perpetrators.json
  def create
    @perpetrator = Perpetrator.new(perpetrator_params)

    respond_to do |format|
      if @perpetrator.save
        format.html { redirect_to @perpetrator, notice: 'Perpetrator was successfully created.' }
        format.json { render :show, status: :created, location: @perpetrator }
      else
        format.html { render :new }
        format.json { render json: @perpetrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perpetrators/1
  # PATCH/PUT /perpetrators/1.json
  def update
    respond_to do |format|
      if @perpetrator.update(perpetrator_params)
        format.html { redirect_to @perpetrator, notice: 'Perpetrator was successfully updated.' }
        format.json { render :show, status: :ok, location: @perpetrator }
      else
        format.html { render :edit }
        format.json { render json: @perpetrator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perpetrators/1
  # DELETE /perpetrators/1.json
  def destroy
    @perpetrator.destroy
    respond_to do |format|
      format.html { redirect_to perpetrators_url, notice: 'Perpetrator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perpetrator
      @perpetrator = Perpetrator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perpetrator_params
      params.require(:perpetrator).permit(:aggression_detail_id, :age, :name, :gender, :relationship, :live_together)
    end
end

class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]

  # GET /treatments
  # GET /treatments.json
  def index
    @treatments = Treatment.all
  end

  # GET /treatments/1
  # GET /treatments/1.json
  def show
  end

  # GET /treatments/new
  def new
    @treatment = Treatment.new
  end

  # GET /treatments/1/edit
  def edit
  end

  # POST /treatments
  # POST /treatments.json
  def create
    @treatment = Treatment.new(treatment_params)

    if @treatment.save
      redirect_to @treatment
    else
      render :new
    end
  end
end

  # PATCH/PUT /treatments/1
  # PATCH/PUT /treatments/1.json
  def update
    if @treatment.update(treatment_params)
      redirect_to @treatment
    else
      render :edit
    end
  end

  # DELETE /treatments/1
  # DELETE /treatments/1.json
  def destroy
    respond_to do |format|
      redirect_to treatments_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment
      @treatment = Treatment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_params
      params.require(:treatment).permit(:weight, :dose, :medicament)
    end

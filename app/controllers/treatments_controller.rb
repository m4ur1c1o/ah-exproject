class TreatmentsController < ApplicationController

  def index
    @treatments = current_user.treatments
  end

  def show
  end

  def new
    @treatment = Treatment.new
  end

  def edit
  end

  def create
    @treatment = Treatment.new(treatment_params)

    if @treatment.save
      redirect_to @treatment
    else
      render :new
    end
  end

  def update
    if @treatment.update(treatment_params)
      redirect_to @treatment
    else
      render :edit
    end
  end

  def destroy
    @treatment.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def treatment_params
    params.require(:treatment).permit(:weight, :dose, :medicament)
  end

end
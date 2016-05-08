class HormoneLevelsController < ApplicationController

  # GET /hormone_levels/new
  def new
    @hormone_level = HormoneLevel.new
  end

  # POST /hormone_levels
  # POST /hormone_levels.json
  def create
    @hormone_level = HormoneLevel.new(hormone_level_params)

    if @hormone_level.save
      h = Hormone.create(name: params[:hormone_name], abbreviation: params[:hormone_abbreviation], unit: params[:hormone_unit])
      p h
      current_user.medical_history.studies << Study.create()
      @hormone_level.hormone = h
      Study.last.hormone_levels << @hormone_level
      redirect_to current_user
    else
      render :new
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def hormone_level_params
      params.require(:hormone_level).permit(:level, :min, :max)
    end
end

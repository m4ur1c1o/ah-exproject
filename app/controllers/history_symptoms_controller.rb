class HistorySymptomsController < ApplicationController
  def new
    @history_symptoms = HistorySymptom.new
    @symptoms = Symptom.all
  end

  def create
    @history_symptoms = HistorySymptom.new(history_symptoms_params)
    puts "*" * 50
    p params
    puts "*" * 50
    p symptoms = params[:symptoms]
    puts "*" * 50
    params[:symptoms].each do |symptom|
      Symptom.new(symptom)
    end

    if @history_symptoms.save
      log_in @history_symptoms
      flash[:success] = "Bienvenido a la App"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def history_symptoms_params
      params.require(:history_symptom).permit(:date)
    end
end

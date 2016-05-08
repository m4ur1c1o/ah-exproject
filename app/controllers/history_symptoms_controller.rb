class HistorySymptomsController < ApplicationController
  def new
    @history_symptoms = HistorySymptom.new
    @symptoms = Symptom.all
  end

  def create
    params[:symptoms].each do |symptom|
      h = HistorySymptom.new(history_symptoms_params)
      p "*" * 50
      p h
      p "*" * 50
      h.medical_history_id = current_user.medical_history.id
      h.save
    end
    flash[:success] = "Guardado correctamente"
    redirect_to current_user
  end

  private

    def history_symptoms_params
      params.require(:history_symptom).permit(:date)
    end
end

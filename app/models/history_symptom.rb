class HistorySymptom < ActiveRecord::Base

	belongs_to :medical_history
	belongs_to :symptom

end

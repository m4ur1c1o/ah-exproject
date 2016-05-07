class Symptom < ActiveRecord::Base

	has_many :history_symptoms
	has_many :medical_histories, through: :history_symptoms

end

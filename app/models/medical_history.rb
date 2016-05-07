class MedicalHistory < ActiveRecord::Base

	has_many :studies
	has_many :treatments
	has_many :history_symptoms
	has_many :symptoms, through: :history_symptoms

end

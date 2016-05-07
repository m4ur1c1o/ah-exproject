class Study < ActiveRecord::Base

	has_many :hormone_levels
	belongs_to :medical_history

end

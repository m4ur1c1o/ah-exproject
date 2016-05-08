class User < ActiveRecord::Base

	has_one :medical_history
	has_secure_password

end

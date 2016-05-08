module UsersHelper

	# Logs in the given user.
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user
		if (session[:user_id])
			@current_user ||= User.find(session[:user_id])
		end
	end

	# Returns the current logged-in user (if any).

	def current_user?(user)
		user == current_user
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

end

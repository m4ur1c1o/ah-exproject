module UsersHelper

	# Logs in the given user.
	def log_in(user)
		session[:user_id] = user.id
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
		forget(current_user)
		session.delete(:user_id)
		@current_user = nil
	end

end

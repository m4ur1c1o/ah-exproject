module ApplicationHelper
	def current_user
		puts "*" * 50
		puts "What the fuck current user in application"
		puts "*" * 50
		if (session[:user_id])
			@current_user ||= User.find(session[:user_id])
		end
	end
end

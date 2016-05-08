class UsersController < ApplicationController

	def create
				
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def update
		
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

end

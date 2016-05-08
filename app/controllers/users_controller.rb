class UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:info] = 'Usuario creado exitosamente'
			redirect_to current_user
		else
			render 'new'
		end			
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
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = 'Perfil actualizados exitosamente'
			redirect_to current_user
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
	end

	private

	def user_params
		params.require(:user).permit(:firstname, :lastname, :age, :gender, :email, :password)
	end

end

class SessionsController < ApplicationController
	def create
		@user = User.find_by(email: params[:user][:email])
		if @user
			session[:user_id] = @user.id
			redirect_to user_path(@user.id)
		else
			redirect_to "/"
		end
	end

	def new
		if current_user
			redirect_to user_path(current_user)
		else
			@user = User.new
		end
	end

	def destroy
		
	end
end

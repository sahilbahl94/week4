class UsersController < ApplicationController

	def new
		
	end

	def destroy
		
	end

	def show
		if current_user
			@user = User.find_by(id: params[:id])
			@product_id = params[:id]
		else 
			redirect_to "/"
		end
	end

	def create
		
	end
end

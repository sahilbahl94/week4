class BidsController < ApplicationController

	def create
		user_email = params[:bid][:email]
		@user = User.find_by(email: user_email)
		@product = Product.find_by(id: params[:product_id])
		@bid = Bid.new(amount: params[:bid][:amount], user_id: @user.id, product_id: @product.id)
		if @bid.save
			flash[:alert] =  "Bid recorded!"
			redirect_to user_product_path(@user.id, @product.id)
		else
			flash[:alert] = "Invalid Bid!"
			redirect_to user_product_path(@user.id, @product.id)
		end
	end

end

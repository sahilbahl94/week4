class ProductsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@products = @user.products
		@product_id = params[:id]
	end

	def show
		@user = User.find(params[:user_id])
		@product = Product.find_by(id: params[:id])	
		@bid = Bid.new
		@bids = Bid.where(product_id: params[:id])
	end

	def new
		@user = User.find_by(id: params[:user_id])
		@product = Product.new
	end

	def create
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_products_path(@user.id)
		else
			flash[:alert] = "Product was not created!"
			redirect_to new_user_product_path(@user.id)
		end
	end

	def destroy
		
	end

	def all_products
		@products = Product.all
	end

	def product_params
		params.require(:product).permit(:title, :description, :deadline)
	end

end

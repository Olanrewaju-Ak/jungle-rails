class ProductsController < ApplicationController

  def index
		# uses MODEl
    @products = Product.all.order(created_at: :desc)
		# VIEW (implicitly returned)
		#render :index
  end

  def show
    @product = Product.find params[:id]
  end

end

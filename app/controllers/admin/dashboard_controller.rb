class Admin::DashboardController < ApplicationController
  def show
		# fetching the total count of products in the database
		@total_products = Product.count()
		@total_categories = Category.count()
  end
end

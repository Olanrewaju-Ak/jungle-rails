require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
		it "should have a name field data" do
			@category = Category.new
			@product = Product.new(
				name:'test product',
				price: 100,
				quantity: 2,
				category: @category
			)
			@product.save
			 expect( @product ).to be_present
		end
		it "should have a price field data" do
			@category = Category.new
			@product = Product.new(
				name:'test product',
				price: 0,
				quantity: 2,
				category: @category
			)
			@product.save
			 expect( @product ).to be_valid
		end
		it 'should not be valid without a quantity' do
		@category = Category.new
		@product = Product.new(name: 'test', price: 100, quantity: nil, category: @category)
		expect(@product).to_not be_valid
		expect(@product.errors.full_messages).to include("Quantity can't be blank")
end
		it "should save a product with all four fields" do
			@category = Category.new
			@product = Product.new(
				name:'test',
				price: 100,
				quantity: 2,
				category: @category
			)
			@product.save
			end
  end
end
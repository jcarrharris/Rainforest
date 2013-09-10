require 'spec_helper'

describe Product do
	it "must contain a name" do
	  	@product = Product.new_user_path
	  	@product.should_not be_valid
	end

	it "must contain a price" do
		@product=Product.new
		@product.name="test"
		@product.should_not be_valid
	end

	it "has a price that is an integer" do
		@product=Product.new.price = 15.34
		@product.price.should eq(15)
	end
end


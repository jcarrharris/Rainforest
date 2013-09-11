require 'spec_helper'

describe Product do
	it "must have a name" do
	  	product = Product.new
	  	product.name should == nil
	  	product.name should_not == "something"
	  	product.should_not be_valid
	end
end


class Product < ActiveRecord::Base
	attr_accessible :description, :name, :price_in_cents

	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:only_integer => true}

	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		sptrintf("%.2f, price_in_dollars")
	end
end

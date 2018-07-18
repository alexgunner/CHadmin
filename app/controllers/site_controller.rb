class SiteController < ApplicationController
	before_action :set_categories

	def index
		
		@products_in_offer = Product.where(offer: true)
	end

	def contact
		@contact_information = Contact.first
	end

	def about_us
		@contact_information = Contact.first
	end

	def product_categories
		
	end

	def product_offers
		@products_in_offer = Product.where(offer: true)
	end

	def category_products
		@category = Category.find(params[:id])
	end

	def subcategory_products
		@subcategory = Subcategory.find(params[:id])
	end

	def manufacturer_products
		@manufacturer = Manufacturer.find(params[:id])
	end

	private
	def set_categories
		@categories = Category.order(name: :asc)
	end
end

class SiteController < ApplicationController
	def index
		@categories = Category.order(name: :asc)
		@newest_products = Product.order(created_at: :desc).take(6)
	end

	def contact
		@contact_information = Contact.first
	end

	def about_us
		@contact_information = Contact.first
	end

	def product_categories
		@categories = Category.order(name: :asc)
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
end

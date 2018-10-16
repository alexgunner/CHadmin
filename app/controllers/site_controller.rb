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

	def services
		@services = Extra.first.services
	end

	def search
		search_name = params[:name].to_s
		search_name = search_name.downcase
		@products = []
		Product.all.each do |product|
			if product.name.downcase.include? search_name
				@products.push product
			end
		end
	end

	def send_message
		name = params[:name]
		email = params[:email]
		phone = params[:phone]
		message_content = params[:message_content]
		Message.create name: name, email: email, phone: phone, message_content: message_content
		redirect_to '/contact', notice: "Tu mensaje fue enviado correctamente. Te enviaremos una respuesta lo antes posible."
	end

	def login

	end

	def create_user
		name = params[:name]
		lastname = params[:lastname]
		email = params[:email]
		phone = params[:phone]
		user_type = params[:user_type]
		password = params[:password]
		password_confirmation = params[:password_confirmation]
		if user_type == "1"
				u_type = "normal"
		end
		if user_type == "2"
			u_type = "company"
		end

		if params[:admin] != "1"
			if password == password_confirmation
				if UserAccount.where(email: email).count == 0
					UserAccount.create name: name, lastname: lastname, email: email, phone: phone, user_type: u_type, password: password
					redirect_to '/login', notice: "Gracias por crear tu cuenta, nos pondremos en contacto contigo cuando el carrito este habilitado"
				else
					redirect_to '/login', notice: "Ya creaste una cuenta con este correo electrónico"
				end

			else
				redirect_to '/login', notice: "La contraseña y la confirmación de contraseña no coinciden, por favor ingresa tus datos nuevamente"
			end
		else
			UserAccount.create name: name, lastname: lastname, email: email, phone: phone, user_type: u_type, password: password
			redirect_to '/user_accounts'
		end

	end

	private
	def set_categories
		@categories = Category.order(name: :asc)
	end
end

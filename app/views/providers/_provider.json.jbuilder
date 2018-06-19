json.extract! provider, :id, :name, :description, :address, :email, :phone, :country, :city, :created_at, :updated_at
json.url provider_url(provider, format: :json)

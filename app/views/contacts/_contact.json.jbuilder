json.extract! contact, :id, :phone, :address, :email, :lat, :long, :created_at, :updated_at
json.url contact_url(contact, format: :json)

json.extract! product, :id, :name, :description, :reference_code, :meausure_unit_id, :category_id, :subcategory_id, :provider_id, :manufacturer_id, :created_at, :updated_at
json.url product_url(product, format: :json)

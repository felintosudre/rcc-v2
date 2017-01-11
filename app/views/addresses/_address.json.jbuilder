json.extract! address, :id, :street, :district, :city, :state, :zip_code, :inscription_id, :created_at, :updated_at
json.url address_url(address, format: :json)
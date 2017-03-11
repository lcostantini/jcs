json.extract! client, :id, :cbu, :account, :name, :address, :phone, :city, :postal_code, :created_at, :updated_at
json.url client_url(client, format: :json)

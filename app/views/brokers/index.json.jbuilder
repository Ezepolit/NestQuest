json.array!(@brokers) do |broker|
  json.extract! broker, :id, :first_name, :last_name, :email, :address, :city, :zip, :phone
  json.url broker_url(broker, format: :json)
end

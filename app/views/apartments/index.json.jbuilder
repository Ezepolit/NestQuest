json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :title, :neighborhood, :price, :bedrooms, :bathrooms, :description, :move_date
  json.url apartment_url(apartment, format: :json)
end

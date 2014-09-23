json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :name, :presence
  json.url amenity_url(amenity, format: :json)
end

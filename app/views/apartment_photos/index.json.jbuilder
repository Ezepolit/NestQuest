json.array!(@apartment_photos) do |apartment_photo|
  json.extract! apartment_photo, :id, :apartment_id
  json.url apartment_photo_url(apartment_photo, format: :json)
end

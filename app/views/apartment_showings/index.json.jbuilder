json.array!(@apartment_showings) do |apartment_showing|
  json.extract! apartment_showing, :id, :apartment_id, :showing_id
  json.url apartment_showing_url(apartment_showing, format: :json)
end

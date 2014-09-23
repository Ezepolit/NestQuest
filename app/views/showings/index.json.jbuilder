json.array!(@showings) do |showing|
  json.extract! showing, :id, :date, :time, :duration, :location, :details
  json.url showing_url(showing, format: :json)
end

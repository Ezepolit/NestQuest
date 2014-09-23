json.array!(@showing_users) do |showing_user|
  json.extract! showing_user, :id, :user_id, :showing_id
  json.url showing_user_url(showing_user, format: :json)
end

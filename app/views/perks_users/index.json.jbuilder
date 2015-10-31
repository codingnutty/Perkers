json.array!(@perks_users) do |perks_user|
  json.extract! perks_user, :id
  json.url perks_user_url(perks_user, format: :json)
end

json.array!(@categories_perks) do |categories_perk|
  json.extract! categories_perk, :id
  json.url categories_perk_url(categories_perk, format: :json)
end

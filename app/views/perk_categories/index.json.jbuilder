json.array!(@perk_categories) do |perk_category|
  json.extract! perk_category, :id
  json.url perk_category_url(perk_category, format: :json)
end

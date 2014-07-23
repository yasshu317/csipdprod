json.array!(@onsite_manager_ratings) do |onsite_manager_rating|
  json.extract! onsite_manager_rating, :id
  json.url onsite_manager_rating_url(onsite_manager_rating, format: :json)
end

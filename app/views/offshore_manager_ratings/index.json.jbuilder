json.array!(@offshore_manager_ratings) do |offshore_manager_rating|
  json.extract! offshore_manager_rating, :id
  json.url offshore_manager_rating_url(offshore_manager_rating, format: :json)
end

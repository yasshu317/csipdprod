json.array!(@ratings) do |rating|
  json.extract! rating, :id, :domain_knowledge, :technical_knowledge, :verbal, :written, :leadership, :ownership, :responsiveness, :presentation, :involvement_in_discussions, :assertiveness, :discipline, :month, :year
  json.url rating_url(rating, format: :json)
end

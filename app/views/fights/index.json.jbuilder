json.array!(@fights) do |fight|
  json.extract! fight, :id, :user1, :user2
  json.url fight_url(fight, format: :json)
end

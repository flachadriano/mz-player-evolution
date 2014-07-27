json.array!(@players) do |player|
  json.extract! player, :id, :number, :name
  json.url player_url(player, format: :json)
end

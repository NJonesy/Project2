json.array!(@players) do |player|
  json.extract! player, :id, :name, :position, :image, :team_id
  json.url player_url(player, format: :json)
end

json.array!(@pictures) do |picture|
  json.extract! picture, :id, :team_id, :title, :caption, :image
  json.url picture_url(picture, format: :json)
end

json.array!(@videos) do |video|
  json.extract! video, :id, :team_id, :title, :caption, :image
  json.url video_url(video, format: :json)
end

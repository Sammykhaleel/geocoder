json.array!(@sports) do |sport|
  json.extract! sport, :id, :address, :latitude, :longitude, :site
  json.url sport_url(sport, format: :json)
end

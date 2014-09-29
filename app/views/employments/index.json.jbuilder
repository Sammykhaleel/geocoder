json.array!(@employments) do |employment|
  json.extract! employment, :id, :address, :latitude, :longitude, :site
  json.url employment_url(employment, format: :json)
end

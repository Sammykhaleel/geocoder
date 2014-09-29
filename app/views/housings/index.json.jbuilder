json.array!(@housings) do |housing|
  json.extract! housing, :id, :address, :latitude, :longitude, :site
  json.url housing_url(housing, format: :json)
end

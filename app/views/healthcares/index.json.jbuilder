json.array!(@healthcares) do |healthcare|
  json.extract! healthcare, :id, :address, :latitude, :longitude, :site
  json.url healthcare_url(healthcare, format: :json)
end

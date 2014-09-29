json.array!(@benefits) do |benefit|
  json.extract! benefit, :id, :address, :latitude, :longitude, :site
  json.url benefit_url(benefit, format: :json)
end

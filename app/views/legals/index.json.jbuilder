json.array!(@legals) do |legal|
  json.extract! legal, :id, :address, :latitude, :longitude, :site
  json.url legal_url(legal, format: :json)
end

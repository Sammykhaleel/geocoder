json.array!(@educations) do |education|
  json.extract! education, :id, :address, :latitude, :longitude, :site
  json.url education_url(education, format: :json)
end

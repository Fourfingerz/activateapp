json.array!(@organizations) do |organization|
  json.extract! organization, :id, :title, :url
  json.url organization_url(organization, format: :json)
end

json.array!(@modtypes) do |modtype|
  json.extract! modtype, :id, :name
  json.url modtype_url(modtype, format: :json)
end

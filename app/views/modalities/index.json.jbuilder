json.array!(@modalities) do |modality|
  json.extract! modality, :id, :name
  json.url modality_url(modality, format: :json)
end

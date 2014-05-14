json.array!(@photos) do |photo|
  json.extract! photo, :id, :product_id, :image_name, :image_uid
  json.url photo_url(photo, format: :json)
end

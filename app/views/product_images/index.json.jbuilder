json.array!(@product_images) do |product_image|
  json.extract! product_image, :id, :image_uid, :image_name, :product_id, :isprimary
  json.url product_image_url(product_image, format: :json)
end

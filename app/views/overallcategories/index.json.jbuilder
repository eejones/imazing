json.array!(@overallcategories) do |overallcategory|
  json.extract! overallcategory, :id, :name, :product_id
  json.url overallcategory_url(overallcategory, format: :json)
end

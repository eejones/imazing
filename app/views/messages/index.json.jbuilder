json.array!(@messages) do |message|
  json.extract! message, :id, :body, :product_id, :fromuser, :touser
  json.url message_url(message, format: :json)
end

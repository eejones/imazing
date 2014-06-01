json.array!(@products) do |product|
  json.extract! product, :id, :manufacturer, :modality, :serial, :condition, :country, :region, :prefremovalmethod, :price, :message_id, :warranty, :rating, :listedon, :listeduntil, :autorenew, :availability, :availabilitydate, :user, :year, :dealertype, :hospitaltype, :orthopedictype, :imagingcentertype, :drofficetype, :urgenttype, :veterinarytype, :chiropractictype, :podiatrytype, :dentaltype, :transaction_id, :uploads
  json.url product_url(product, format: :json)
end

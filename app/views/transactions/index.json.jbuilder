json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :prefremovalmethod, :sellremovalcost, :sellshipcost, :selldate, :selluser, :buyuser
  json.url transaction_url(transaction, format: :json)
end

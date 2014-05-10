json.array!(@searches) do |search|
  json.extract! search, :id, :keywords, :manufacturer_id, :modtype_id, :modality_id, :condition_id, :country_id, :region_id, :prefremovalmethod_id, :minimum_price, :maximum_price, :rating, :availabilitydate, :year, :dealertype, :hospitaltype, :orthopedictype, :imagingcentertype, :drofficetype, :urgenttype, :painmanagementtype, :veterinarytype, :chiropractictype, :podiatrytype, :dentaltype, :overallcategory_id
  json.url search_url(search, format: :json)
end

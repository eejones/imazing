class PopulateNamesforProductAssociations < ActiveRecord::Migration
  products = Product.all
  products.each do |p|
    modality = Modality.find_by_id(p.modality_id)
    modtype = Modtype.find_by_id(p.modtype_id)
    manufacturer = Manufacturer.find_by_id(p.manufacturer_id)
    overallcategory = Overallcategory.find_by_id(p.overallcategory_id)
    p.modality_name = modality.name if !modality.nil?
    p.modtype_name = modtype.name if !modtype.nil?
    p.manufacturer_name = manufacturer.name if !manufacturer.nil?
    p.overallcategory_name = overallcategory.name if !overallcategory.nil?
    p.save
  end
end

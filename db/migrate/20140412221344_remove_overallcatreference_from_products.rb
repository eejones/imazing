class RemoveOverallcatreferenceFromProducts < ActiveRecord::Migration
  def change
    remove_reference :products, :overallcategories
    remove_reference :overallcategories, :products
  end
end

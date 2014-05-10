class AddRealReferencestoProducts < ActiveRecord::Migration
  def change
    add_column :products, :overallcategory, :string, index:true
    add_reference :products, :manufacturer, index:true
    add_reference :products, :modtype, index:true
    add_reference :products, :modality, index:true
  end
end

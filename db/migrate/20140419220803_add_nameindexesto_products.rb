class AddNameindexestoProducts < ActiveRecord::Migration
  def change
    add_index :products, :transaction_name
    add_index :products, :user_name
    add_index :products, :modality_name
    add_index :products, :modtype_name
    add_index :products, :manufacturer_name
    add_index :products, :overallcategory_name
  end
end

class FixProductColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :postedproduct, :product_id 
  end
end

class RemoveProductcolumnfromPhoto < ActiveRecord::Migration
  def change
    remove_column :photos, :product_id, :integer
  end
end

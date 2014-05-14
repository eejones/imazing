class RemoveProductsfromPhoto < ActiveRecord::Migration
  def change
    remove_reference :photos, :products
   
  end
end

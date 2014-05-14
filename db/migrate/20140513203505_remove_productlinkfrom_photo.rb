class RemoveProductlinkfromPhoto < ActiveRecord::Migration
  def change
    remove_reference :photos, :products
    remove_reference :products, :photos
  end
end

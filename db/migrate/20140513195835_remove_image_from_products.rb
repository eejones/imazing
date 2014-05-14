class RemoveImageFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image_name, :string
    remove_column :products, :image_uid, :string
  end
end

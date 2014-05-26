class RemoveColumnsFromProductImages < ActiveRecord::Migration
  def change
    remove_column :product_images, :image_uid, :string
    remove_column :product_images, :image_name, :string

  end
end

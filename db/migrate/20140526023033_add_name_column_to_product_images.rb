class AddNameColumnToProductImages < ActiveRecord::Migration
  def change
    add_column :product_images, :name, :string
  end
end

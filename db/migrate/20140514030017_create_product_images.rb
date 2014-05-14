class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :image_uid
      t.string :image_name
      t.belongs_to :product
      t.boolean :isprimary

      t.timestamps
    end
  end
end

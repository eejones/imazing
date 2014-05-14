class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :product, index: true
      t.string :image_name
      t.string :image_uid

      t.timestamps
    end
  end
end

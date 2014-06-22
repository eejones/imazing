class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :product, index: true
      t.boolean "primaryimage" 
      t.string "name"
      t.string "image"

      t.timestamps
    end
  end
end

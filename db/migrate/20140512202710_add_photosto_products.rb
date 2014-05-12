class AddPhotostoProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_uid,  :string
    add_column :products, :image_name, :string
  end
end

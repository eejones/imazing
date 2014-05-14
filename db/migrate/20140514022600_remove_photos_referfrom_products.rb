class RemovePhotosReferfromProducts < ActiveRecord::Migration
  def change
    remove_reference :products, :photo
    remove_column :products, :primary_photo
  end
end

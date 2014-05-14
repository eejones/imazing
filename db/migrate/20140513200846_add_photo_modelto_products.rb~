class AddPhotoModeltoProducts < ActiveRecord::Migration
  def change
    add_reference :products, :photo, index:true
    add_column :products, :primary_photo, :integer

  end
end

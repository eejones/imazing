class AddImagebletoPhotos < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.references :imageable, :polymorphic => true, :index => true
    end
  end
end

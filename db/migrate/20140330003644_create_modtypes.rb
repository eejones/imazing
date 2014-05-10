class CreateModtypes < ActiveRecord::Migration
  def change
    create_table :modtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end

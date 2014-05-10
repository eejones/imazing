class CreateOverallcategorizations < ActiveRecord::Migration
  def change
    create_table :overallcategorizations do |t|
      t.references :product_id, index: true
      t.references :overallcategory_id, index: true
      t.timestamps
    end
  end
end

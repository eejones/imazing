class CreateOverallcategories < ActiveRecord::Migration
  def change
    create_table :overallcategories do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps
    end
  end
end

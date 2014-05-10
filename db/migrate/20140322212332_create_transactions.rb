class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :prefremovalmethod
      t.decimal :sellremovalcost
      t.decimal :sellshipcost
      t.references :product, index:true
      t.time :selldate, index:true
      t.integer :selluser, index:true
      t.integer :buyuser, index:true

      t.timestamps
    end
  end
end

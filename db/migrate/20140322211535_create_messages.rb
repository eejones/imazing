class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.references :product, index: true
      t.integer :fromuser, index:true
      t.integer :touser, index:true

      t.timestamps
    end
  end
end

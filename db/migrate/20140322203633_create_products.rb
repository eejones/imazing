class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :manufacturer, index: true
      t.string :type, index: true
      t.string :modality, index: true
      t.string :whattype, index: true
      t.string :serial, index: true
      t.string :condition, index: true
      t.string :country, index: true
      t.string :region, index: true
      t.string :prefremovalmethod, index: true
      t.decimal :price, index: true
      t.references :message, index: true
      t.string :warranty, index: true
      t.integer :rating, index: true
      t.date :listedon, index: true
      t.time :listeduntil, index: true
      t.boolean :autorenew
      t.string :availability, index: true
      t.date :availabilitydate, index: true
      t.references :user, index: true
      t.date :year, index: true
      t.boolean :dealertype, index: true
      t.boolean :hospitaltype, index: true
      t.boolean :orthopedictype, index: true
      t.boolean :imagingcentertype, index: true
      t.boolean :drofficetype, index: true
      t.boolean :urgenttype, index: true
      t.boolean :painmanagementtype, index: true
      t.boolean :veterinarytype, index: true
      t.boolean :chiropractictype, index: true
      t.boolean :podiatrytype, index: true
      t.boolean :dentaltype, index: true
      t.references :transaction, index: true

      t.timestamps
    end
  end
end

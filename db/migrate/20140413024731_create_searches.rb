class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :manufacturer_id
      t.integer :modtype_id
      t.integer :modality_id
      t.integer :condition_id
      t.integer :country_id
      t.integer :region_id
      t.integer :prefremovalmethod_id
      t.float :minimum_price
      t.float :maximum_price
      t.integer :rating
      t.date :availabilitydate
      t.date :year
      t.boolean :dealertype
      t.boolean :hospitaltype
      t.boolean :orthopedictype
      t.boolean :imagingcentertype
      t.boolean :drofficetype
      t.boolean :urgenttype
      t.boolean :painmanagementtype
      t.boolean :veterinarytype
      t.boolean :chiropractictype
      t.boolean :podiatrytype
      t.boolean :dentaltype
      t.integer :overallcategory_id

      t.timestamps
    end
  end
end

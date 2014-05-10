class CreateModtypemanufacturers < ActiveRecord::Migration
  def change
    create_table :modtypemanufacturers do |t|
      t.references :manufacturer, index: true
      t.references :modtype, index: true

      t.timestamps
    end
  end
end

class AddcorrectReftoModtype < ActiveRecord::Migration
  def change
    add_reference :modtypes, :manufacturer, index:true
  end
end

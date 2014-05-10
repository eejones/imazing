class AddModalityReftoModtype < ActiveRecord::Migration
  def change
    add_reference :modtypes, :modality, index:true
  end
end

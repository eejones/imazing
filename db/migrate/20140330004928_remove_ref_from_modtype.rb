class RemoveRefFromModtype < ActiveRecord::Migration
  def change
    remove_reference :modtypes, :manufacturers
  end
end

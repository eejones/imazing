class DropCategorizationTable < ActiveRecord::Migration
  def change
    drop_table :overallcategorizations
  end
end

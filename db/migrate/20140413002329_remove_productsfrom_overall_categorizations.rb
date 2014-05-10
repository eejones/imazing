class RemoveProductsfromOverallCategorizations < ActiveRecord::Migration
  def change
    remove_reference :overallcategories, :products
  end
end

class AddOverallcatsandremovebadpluralfromProducts < ActiveRecord::Migration
  def change
    add_reference :products, :overallcategory
    remove_reference :products, :overallcategories
  end
end

class RemoveOverallCategoryFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :overallcategory, :string
  end
end

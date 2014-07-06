class AddbackoverallcatidtoProducts < ActiveRecord::Migration
  def change
    add_reference :products, :overallcategories
  end
end

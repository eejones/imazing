class ChangeDateFormatInProducts < ActiveRecord::Migration
  def change
    change_column :products, :listeduntil, :date, index: true
  end
end

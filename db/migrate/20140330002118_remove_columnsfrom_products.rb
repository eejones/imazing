class RemoveColumnsfromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :manufacturer, :string
    remove_column :products, :type, :string
    remove_column :products, :modality, :string
    remove_column :products, :whattype, :string
  end
end

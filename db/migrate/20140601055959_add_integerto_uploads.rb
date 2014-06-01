class AddIntegertoUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :integer, :string
  end
end

class AddReferenceToModalitys < ActiveRecord::Migration
  def change
    add_reference :modalities, :whattype, index:true
    add_reference :modalities, :manufacturer, index:true
  end
end

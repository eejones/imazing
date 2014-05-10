class Modtypemanufacturer < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :modtype

  validates :manufacturer_id, :presence => true
  validates :modtype_id, :presence => true

end

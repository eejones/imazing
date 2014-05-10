class Modtype < ActiveRecord::Base
  has_many :modtypemanufacturers, :foreign_key => "modtype_id",
                           :dependent => :destroy
  has_many :manufacturers, :through => :modtypemanufacturers
  belongs_to :modality

  has_many :products
end

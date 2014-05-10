class Manufacturer < ActiveRecord::Base
  has_many :modtypemanufacturers, :foreign_key => "manufacturer_id",
                           :dependent => :destroy
  has_many :modtypes, :through=> :modtypemanufacturers

  has_many :products
end

class Modality < ActiveRecord::Base
  has_many :modtypes
  has_many :products
end

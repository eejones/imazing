class Product < ActiveRecord::Base
  include UsersHelper

  has_many :messages
  belongs_to :transaction
  belongs_to :user

  belongs_to :modality
  belongs_to :modtype
  belongs_to :manufacturer

  belongs_to :overallcategory

  validates_presence_of :modality, :modtype, :manufacturer, :overallcategory, :year

  include ApplicationHelper
# have to set inheritance column to nil to allow the use of attribute named 'type' with self.inheritance_column = nil
self.inheritance_column = nil

#should use sphynx instead for full text search
def self.search(search)
  if search
#    where('modtype_name LIKE ?', "%#{search}%")
    where("modtype_name LIKE ? OR manufacturer_name LIKE ? OR modality_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  else
    scoped
  end
end

#  after_validation :geocode

end

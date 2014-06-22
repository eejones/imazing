class Upload < ActiveRecord::Base
  has_attached_file :upload

  belongs_to :product

  has_attached_file :upload, :styles => { :large => "800x800", :medium => "400x400", :small => "200x200" }

  validates :product_id, :presence => true

  validates_attachment_content_type :upload, :content_type => /\Aimage\/.*\Z/  

include Rails.application.routes.url_helpers

end

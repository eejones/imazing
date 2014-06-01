class Upload < ActiveRecord::Base
  has_attached_file :upload

  belongs_to :product

  validates :product_id, :presence => true

  has_attached_file :upload, :styles => { :large => "800x800", :medium => "400x400>", :small => "200x200>" }


  include Rails.application.routes.url_helpers

end

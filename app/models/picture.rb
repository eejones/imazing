class Picture < ActiveRecord::Base
  belongs_to :product
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :image

  before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end

end

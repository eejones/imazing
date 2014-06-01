class ProductImage < ActiveRecord::Base

  belongs_to :product
  #require 'dragonfly'
  #dragonfly_accessor :image
  mount_uploader :image, ImageUploader

  before_create :default_name

  def default_name
    self.name ||= File.basename(image.filename, '.*').titleize if image
  end

  #one convenient method to pass jq_upload the necessary information
  def to_jq_upload
    {
      "name" => read_attribute(:image),
      "size" => image.size,
      "url" => image.url,
      "correct_url" => image.attributes,
      "thumbnail_url" => image.thumb.url,
      "delete_url" => product_image_path(:id => id),
      "delete_type" => "DELETE" 
    }
  end

end

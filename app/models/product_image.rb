class ProductImage < ActiveRecord::Base

  belongs_to :product
  require 'dragonfly'
  dragonfly_accessor :image

end

class Photo < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true

  require 'dragonfly'

  dragonfly_accessor :image

end

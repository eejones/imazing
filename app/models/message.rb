class Message < ActiveRecord::Base

#  include ActiveAttr::Model

  belongs_to :product
  belongs_to :fromuser, :class_name => "User", :foreign_key => :fromuser_id
  belongs_to :touser, :class_name => "User", :foreign_key => :touser_id

  validates_presence_of :fromuser_id, :touser_id


 # attribute :product_id
  #attribute :body
  #attribute :fromuser
  #attribute :touser

#  validates_presence_of :body

end

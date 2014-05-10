class Transaction < ActiveRecord::Base
  belongs_to :product
  belongs_to :buyuser, :class_name => "User"
  belongs_to :selluser, :class_name => "User"
end

